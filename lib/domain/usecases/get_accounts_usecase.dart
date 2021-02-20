import 'package:investec_open_api/core/usecase.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/domain/repositories/accounts_repository.dart';

class GetAccountsUseCase implements UseCase<AccountsEntity, NoParams> {
  final AccountsRepository repository;

  GetAccountsUseCase(this.repository);

  /// Contract implementation for getting all available accounts from the REST API
  @override
  Future<AccountsEntity> call(NoParams params) async {
    return await repository.getAccounts();
  }
}
