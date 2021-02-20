import 'package:investec_open_api/data/repositories/access_token_repository_impl.dart';
import 'package:investec_open_api/data/sources/access_token_remote_source.dart';
import 'package:investec_open_api/domain/repositories/access_token_repositorye.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/access_token/access_token_fixture.dart';
import 'access_token_repository_test.mocks.dart';

@GenerateMocks([AccessTokenRemoteSource])
void main() {
  late AccessTokenRepository repository;
  late MockAccessTokenRemoteSource mockRemoteSource;

  setUp(() {
    mockRemoteSource = MockAccessTokenRemoteSource();
    repository = AccessTokenRepositoryImpl(mockRemoteSource);
  });

  group('AccessTokenRepository', () {
    test('should should return data when the remote source is successful',
        () async {
      const mockClientId = 'mock-client-id';
      const mockSecret = 'mock-secret';

      //arrange
      when(mockRemoteSource.getToken(any, any)).thenAnswer(
        (_) async => accessTokenFixture,
      );
      //act
      final response = await repository.getToken(mockClientId, mockSecret);
      //assert
      verify(mockRemoteSource.getToken(mockClientId, mockSecret));
      expect(response, equals(accessTokenFixture));
    });
  });
}
