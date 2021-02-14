import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';

abstract class AccountsRepository {
  Future<AccountsEntity> getAccounts();
}
