import 'package:investec_open_api/core/usecase.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';
import 'package:investec_open_api/domain/repositories/account_balance_repository.dart';

class GetAccountBalanceUseCase
    implements UseCase<AccountBalanceEntity, GetAccountBalanceParams> {
  final AccountBalanceRepository repository;

  GetAccountBalanceUseCase(this.repository);

  /// REST call for retrieving the [AccountBalanceEntity} data from Investec
  @override
  Future<AccountBalanceEntity> call(GetAccountBalanceParams params) async {
    return await repository.getBalance(params.accountId);
  }
}

class GetAccountBalanceParams {
  final String accountId;

  GetAccountBalanceParams(this.accountId);
}
