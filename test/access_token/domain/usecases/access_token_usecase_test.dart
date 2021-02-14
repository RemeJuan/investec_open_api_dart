import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';
import 'package:investec_open_api/access_token/domain/usecases/get_access_token_usecase.dart';
import 'package:investec_open_api/core/usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../fixtures/access_token/access_token_fixture.dart';
import 'access_token_usecase_test.mocks.dart';

@GenerateMocks([AccessTokenRepository])
void main() {
  late GetAccessTokenUseCase useCase;
  late MockAccessTokenRepository mockRepository;

  setUp(() {
    mockRepository = MockAccessTokenRepository();
    useCase = GetAccessTokenUseCase(mockRepository);
  });

  test('should get access details from repository', () async {
    //arrange
    when(mockRepository.getToken()).thenAnswer(
      (_) async => accessTokenFixture,
    );
    //act
    final result = await useCase(NoParams());
    //assert
    expect(result, accessTokenFixture);
    verify(mockRepository.getToken());
    verifyNoMoreInteractions(mockRepository);
  });
}
