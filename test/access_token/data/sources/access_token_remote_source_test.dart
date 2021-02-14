import 'package:http/http.dart' as http;
import 'package:investec_open_api/access_token/data/sources/access_token_remote_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../fixtures/fixture_reader.dart';
import 'access_token_remote_source_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  final data = fixture('access_token/get_access_token.json');

  late AccessTokenRemoteSource source;
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    source = AccessTokenRemoteSourceImpl(mockClient);
  });

  test('should perform a GET request on a URL with digest being the endpoint',
      () async {
    when(mockClient.post(
      any,
      body: anyNamed('body'),
      headers: anyNamed('headers'),
    )).thenAnswer(
      (_) async => http.Response(data, 200),
    );
    const mockClientId = 'mock-client-id';
    const mockSecret = 'mock-secret';

    final mockUrl = Uri.parse(
      'https://openapi.investec.com/identity/v2/oauth2/token',
    );
    //act
    await source.getToken(mockClientId, mockSecret);
    //assert
    final body = {
      'grant_type': 'client_credentials',
      'scope': 'accounts',
    };
    final headers = {
      'Authorization': 'Basic bW9jay1jbGllbnQtaWQ6bW9jay1zZWNyZXQ=',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    verify(mockClient.post(mockUrl, body: body, headers: headers));
  });
}
