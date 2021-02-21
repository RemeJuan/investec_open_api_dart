import 'package:investec_open_api/data/sources/account_balance_remote_source.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';
import 'package:investec_open_api/domain/repositories/account_balance_repository.dart';

class AccountBalanceRepositoryImpl implements AccountBalanceRepository {
  final AccountBalanceRemoteSource remoteSource;

  AccountBalanceRepositoryImpl(this.remoteSource);

  /// Repository implementation for getting the [AccountBalanceEntity] from the Rest API
  @override
  Future<AccountBalanceEntity> getBalance(String accountId) async {
    return remoteSource.getBalance(accountId);
  }
}
