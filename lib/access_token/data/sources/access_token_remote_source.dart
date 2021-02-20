import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/core/endpoint_builder.dart';

abstract class AccessTokenRemoteSource {
  Future<AccessTokenEntity> getToken(
    String clientId,
    String secret,
  );
}

class AccessTokenRemoteSourceImpl implements AccessTokenRemoteSource {
  final http.Client httpClient;

  AccessTokenRemoteSourceImpl(this.httpClient);

  /// Repository implementation for getting available accounts from the Rest API
  ///
  @override
  Future<AccessTokenEntity> getToken(
    String clientId,
    String secret,
  ) async {
    final uri = EndpointBuilder.uri('/identity/v2/oauth2/token');

    final bytes = utf8.encode('$clientId:$secret');
    final base64Str = base64.encode(bytes);

    final headers = {
      'Authorization': 'Basic $base64Str',
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final request = await httpClient.post(
      uri,
      body: {
        'grant_type': 'client_credentials',
        'scope': 'accounts',
      },
      headers: headers,
    );

    return AccessTokenEntity.fromJson(
      jsonDecode(request.body) as Map<String, dynamic>,
    );
  }
}
