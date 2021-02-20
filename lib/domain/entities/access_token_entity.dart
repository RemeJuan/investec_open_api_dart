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

  @override
  List<Object?> get props => [accessToken, tokenType, expires, scope];

  @override
  bool? get stringify => true;
}
