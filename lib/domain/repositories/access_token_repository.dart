import 'package:investec_open_api/domain/entities/access_token_entity.dart';

abstract class AccessTokenRepository {
  /// Contract implementation for getting an [AccessTokenEntity] and authenticating the user
  Future<AccessTokenEntity> getToken(
    String clientId,
    String secret,
  );
}
