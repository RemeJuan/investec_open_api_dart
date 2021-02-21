import 'package:investec_open_api/domain/entities/account_balance_entity.dart';

abstract class AccountBalanceRepository {
  /// Contract implementation for getting an [AccountBalanceEntity] and authenticating the user
  Future<AccountBalanceEntity> getBalance(String accountId);
}
