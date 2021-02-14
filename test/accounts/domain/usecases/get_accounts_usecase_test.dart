import 'package:investec_open_api/accounts/domain/repositories/accounts_repository.dart';
import 'package:investec_open_api/accounts/domain/usecases/get_accounts_usecase.dart';
import 'package:investec_open_api/core/usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../../fixtures/accounts/accounts_fixture.dart';
import 'get_accounts_usecase_test.mocks.dart';

@GenerateMocks([AccountsRepository])
void main() {
  late GetAccountsUseCase useCase;
  late MockAccountsRepository mockRepository;

  setUp(() {
    mockRepository = MockAccountsRepository();
    useCase = GetAccountsUseCase(mockRepository);
  });

  test('should get account details from repository', () async {
    //arrange
    when(mockRepository.getAccounts()).thenAnswer(
      (_) async => accountsFixture,
    );
    //act
    final result = await useCase(NoParams());
    //assert
    expect(result, accountsFixture);
    verify(mockRepository.getAccounts());
    verifyNoMoreInteractions(mockRepository);
  });
}
