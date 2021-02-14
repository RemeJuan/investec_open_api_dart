import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/accounts/domain/repositories/accounts_repository.dart';
import 'package:investec_open_api/core/usecase.dart';

class GetAccountsUseCase implements UseCase<AccountsEntity, NoParams> {
  final AccountsRepository repository;

  GetAccountsUseCase(this.repository);

  @override
  Future<AccountsEntity> call(NoParams params) async {
    return await repository.getAccounts();
  }
}