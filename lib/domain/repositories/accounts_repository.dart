import 'package:investec_open_api/domain/entities/accounts_entity.dart';

abstract class AccountsRepository {
  /// Contract implementation for getting all available accounts from the REST API
  Future<AccountsEntity> getAccounts();
}
