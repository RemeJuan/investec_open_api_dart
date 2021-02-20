import 'package:investec_open_api/domain/entities/access_token_entity.dart';

class AccessTokenModel extends AccessTokenEntity {
  const AccessTokenModel({
    required String accessToken,
    required String tokenType,
    required int expires,
    required String scope,
  }) : super(
          accessToken: accessToken,
          tokenType: tokenType,
          expires: expires,
          scope: scope,
        );

  factory AccessTokenModel.fromJson(Map<String, dynamic> json) {
    return AccessTokenModel(
      accessToken: json['access_token'] as String,
      expires: json['expires_in'] as int,
      scope: json['scope'] as String,
      tokenType: json['token_type'] as String,
    );
  }
}
