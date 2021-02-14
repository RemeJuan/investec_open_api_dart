library investec_open_api;

import 'package:http/http.dart' as http;
import 'package:investec_open_api/access_token/data/sources/access_token_remote_source.dart';
import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/accounts/data/sources/accounts_remote_source.dart';
import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';

class InvestecOpenAPI {
  final String clientId;
  final String secret;

  const InvestecOpenAPI({
    required this.clientId,
    required this.secret,
  });

  Future<AccessTokenEntity> _getAccessToken(http.Client client) async {
    return AccessTokenRemoteSourceImpl(client).getToken(clientId, secret);
  }

  Future<AccountsEntity> getAccounts() async {
    final httpClient = http.Client();

    final token = await _getAccessToken(httpClient);

    return AccountsRemoteSourceImpl(httpClient, token: token).getAccounts();
  }
}
