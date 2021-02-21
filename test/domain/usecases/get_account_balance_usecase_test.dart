import 'package:investec_open_api/domain/repositories/account_balance_repository.dart';
import 'package:investec_open_api/domain/usecases/get_account_balance_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../../fixtures/account_balance/account_balance_fixture.dart';
import 'get_account_balance_usecase_test.mocks.dart';

@GenerateMocks([AccountBalanceRepository])
void main() {
  late GetAccountBalanceUseCase useCase;
  late MockAccountBalanceRepository mockRepository;

  setUp(() {
    mockRepository = MockAccountBalanceRepository();
    useCase = GetAccountBalanceUseCase(mockRepository);
  });

  test('should get account details from repository', () async {
    const mockAccountId = 'mock-account-id';
    //arrange
    when(mockRepository.getBalance(mockAccountId)).thenAnswer(
      (_) async => accountBalanceFixture,
    );
    //act
    final result = await useCase(GetAccountBalanceParams(mockAccountId));
    //assert
    expect(result, accountBalanceFixture);
    verify(mockRepository.getBalance(mockAccountId));
    verifyNoMoreInteractions(mockRepository);
  });
}
