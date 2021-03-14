import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:investec_open_api/core/endpoint_builder.dart';
import 'package:investec_open_api/data/models/account_balance_model.dart';
import 'package:investec_open_api/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';

abstract class AccountBalanceRemoteSource {
  Future<AccountBalanceEntity> getBalance(String accountId);
}

class AccountBalanceRemoteSourceImpl implements AccountBalanceRemoteSource {
  final http.Client httpClient;
  final AccessTokenEntity token;

  AccountBalanceRemoteSourceImpl(
    this.httpClient, {
    required this.token,
  });

  /// REST call for retrieving accounts data from Investec
  @override
  Future<AccountBalanceEntity> getBalance(String accountId) async {
    final uri = EndpointBuilder.uri('za/pb/v1/accounts/$accountId/balance');

    final headers = <String, String>{
      'Authorization': 'Bearer ${token.accessToken}',
    };
    final request = await httpClient.get(uri, headers: headers);

    return AccountBalanceModel.fromJson(
      jsonDecode(request.body) as Map<String, dynamic>,
    );
  }
}
