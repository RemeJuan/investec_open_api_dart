import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/core/endpoint_builder.dart';

abstract class AccessTokenRemoteSource {
  Future<AccessTokenEntity> getToken();
}

class AccessTokenRemoteSourceImpl implements AccessTokenRemoteSource {
  final http.Client httpClient;

  AccessTokenRemoteSourceImpl(this.httpClient);

  @override
  Future<AccessTokenEntity> getToken() async {
    final uri = EndpointBuilder.uri('/identity/v2/oauth2/token');

    final request = await httpClient.get(uri);

    return AccessTokenEntity.fromJson(jsonDecode(request.body));
  }
}
