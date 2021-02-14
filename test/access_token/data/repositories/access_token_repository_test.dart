import 'package:investec_open_api/access_token/data/repositories/access_token_repository_impl.dart';
import 'package:investec_open_api/access_token/data/sources/access_token_remote_source.dart';
import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../fixtures/access_token/access_token_fixture.dart';
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
      //arrange
      when(mockRemoteSource.getToken()).thenAnswer(
        (_) async => accessTokenFixture,
      );
      //act
      final response = await repository.getToken();
      //assert
      verify(mockRemoteSource.getToken());
      expect(response, equals(accessTokenFixture));
    });
  });
}
