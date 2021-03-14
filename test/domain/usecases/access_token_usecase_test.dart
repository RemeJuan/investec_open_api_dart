import 'package:investec_open_api/domain/repositories/access_token_repository.dart';
import 'package:investec_open_api/domain/usecases/get_access_token_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/access_token/access_token_fixture.dart';
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
    const mockClientId = 'mock-client-id';
    const mockSecret = 'mock-secret';
    when(mockRepository.getToken(any, any)).thenAnswer(
      (_) async => accessTokenFixture,
    );
    //act
    final result = await useCase(GetAccessTokenParams(
      mockClientId,
      mockSecret,
    ));
    //assert
    expect(result, accessTokenFixture);
    verify(mockRepository.getToken(mockClientId, mockSecret));
    verifyNoMoreInteractions(mockRepository);
  });
}
