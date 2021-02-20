import 'package:http/http.dart' as http;
import 'package:investec_open_api/data/sources/accounts_remote_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/access_token/access_token_fixture.dart';
import '../../fixtures/fixture_reader.dart';
import 'accounts_remote_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  final data = fixture('accounts/get_accounts.json');

  late AccountsRemoteSource source;
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    source = AccountsRemoteSourceImpl(
      mockClient,
      token: accessTokenFixture,
    );
  });

  test('should perform a GET request on a URL with digest being the endpoint',
      () async {
    when(mockClient.get(
      any,
      headers: anyNamed('headers'),
    )).thenAnswer(
      (_) async => http.Response(data, 200),
    );

    final mockUrl = Uri.parse(
      'https://openapi.investec.com/za/pb/v1/accounts',
    );
    //act
    await source.getAccounts();
    //assert
    const headers = <String, String>{'Authorization': 'Bearer mock-token'};
    verify(mockClient.get(mockUrl, headers: headers));
  });
}
