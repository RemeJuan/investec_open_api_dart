import 'package:equatable/equatable.dart';

class AccessTokenEntity extends Equatable {
  final String accessToken;
  final String tokenType;
  final int expires;
  final String scope;

  const AccessTokenEntity({
    required this.accessToken,
    required this.tokenType,
    required this.expires,
    required this.scope,
  });

  factory AccessTokenEntity.fromJson(Map<String, dynamic> json) {
    return AccessTokenEntity(
      accessToken: json['access_token'],
      expires: json['expires_in'],
      scope: json['scope'],
      tokenType: json['token_type'],
    );
  }

  @override
  List<Object?> get props => [accessToken, tokenType, expires, scope];

  @override
  bool? get stringify => true;
}