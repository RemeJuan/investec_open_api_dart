library investec_open_api;

import 'package:http/http.dart' as http;
import 'package:investec_open_api/data/sources/access_token_remote_source.dart';
import 'package:investec_open_api/data/sources/account_balance_remote_source.dart';
import 'package:investec_open_api/data/sources/accounts_remote_source.dart';
import 'package:investec_open_api/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';

class InvestecOpenAPI {
  final String clientId;
  final String secret;
  final http.Client httpClient;

  const InvestecOpenAPI({
    required this.clientId,
    required this.secret,
    required this.httpClient,
  });

  /// Gets the access token which is sent with the headers on every API call
  Future<AccessTokenEntity> _getAccessToken() async {
    return AccessTokenRemoteSourceImpl(httpClient).getToken(clientId, secret);
  }

  /// Returns a list of all available accounts available for the [AccessTokenEntity]
  /// returned through [_getAccessToken].
  Future<AccountsEntity> getAccounts() async {
    final token = await _getAccessToken();

    return AccountsRemoteSourceImpl(httpClient, token: token).getAccounts();
  }

  Future<AccountBalanceEntity> getAccountBalance(String accountId) async {
    final token = await _getAccessToken();

    return AccountBalanceRemoteSourceImpl(httpClient, token: token)
        .getBalance(accountId);
  }
}
