import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:investec_open_api/core/endpoint_builder.dart';
import 'package:investec_open_api/data/models/accounts_model.dart';
import 'package:investec_open_api/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';

abstract class AccountsRemoteSource {
  Future<AccountsEntity> getAccounts();
}

class AccountsRemoteSourceImpl implements AccountsRemoteSource {
  final http.Client httpClient;
  final AccessTokenEntity token;

  AccountsRemoteSourceImpl(
    this.httpClient, {
    required this.token,
  });

  /// REST call for retrieving accounts data from Investec
  @override
  Future<AccountsEntity> getAccounts() async {
    final uri = EndpointBuilder.uri('/za/pb/v1/accounts');

    final headers = <String, String>{
      'Authorization': 'Bearer ${token.accessToken}',
    };
    final request = await httpClient.get(uri, headers: headers);

    return AccountsModel.fromJson(
      jsonDecode(request.body) as Map<String, dynamic>,
    );
  }
}
