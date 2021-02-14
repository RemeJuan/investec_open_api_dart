import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/core/endpoint_builder.dart';

abstract class AccountsRemoteSource {
  Future<AccountsEntity> getAccounts();
}

class AccountsRemoteSourceImpl implements AccountsRemoteSource {
  final http.Client httpClient;

  AccountsRemoteSourceImpl(this.httpClient);

  @override
  Future<AccountsEntity> getAccounts() async {
    final uri = EndpointBuilder.uri('/za/pb/v1/accounts');

    final request = await httpClient.get(uri);

    return AccountsEntity.fromJson(
      jsonDecode(request.body) as Map<String, dynamic>,
    );
  }
}
