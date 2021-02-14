import 'package:http/http.dart' as http;
import 'package:investec_open_api/investec_open_api.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'fixtures/accounts/accounts_fixture.dart';
import 'fixtures/fixture_reader.dart';
import 'investec_open_api_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  late MockClient mockClient;
  late InvestecOpenAPI api;

  setUp(() {
    mockClient = MockClient();
    api = InvestecOpenAPI(
      clientId: 'mock-client-id',
      secret: 'mock-secret',
      httpClient: mockClient,
    );
  });

  group('InvestecOpenAPI', () {
    test('getAccounts', () async {
      final token = fixture('access_token/get_access_token.json');
      final accounts = fixture('accounts/get_accounts.json');

      // Get the access token details before asking for account info
      when(mockClient.post(
        any,
        body: anyNamed('body'),
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(token, 200));

      // Mock the accounts response
      when(mockClient.get(
        any,
        headers: anyNamed('headers'),
      )).thenAnswer((_) async => http.Response(accounts, 200));

      final response = await api.getAccounts();
      expect(response, equals(accountsFixture));
    });
  });
}
