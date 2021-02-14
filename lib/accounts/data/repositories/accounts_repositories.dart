import 'package:investec_open_api/accounts/data/sources/accounts_remote_source.dart';
import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/accounts/domain/repositories/accounts_repository.dart';

class AccountsRepositoryImpl implements AccountsRepository {
  final AccountsRemoteSource remoteSource;

  AccountsRepositoryImpl(this.remoteSource);

  @override
  Future<AccountsEntity> getAccounts() async {
    return remoteSource.getAccounts();
  }
}
