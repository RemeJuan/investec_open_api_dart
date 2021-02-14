import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';

abstract class AccessTokenRepository {
  Future<AccessTokenEntity> getToken();
}