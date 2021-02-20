import 'package:investec_open_api/access_token/data/sources/access_token_remote_source.dart';
import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';

class AccessTokenRepositoryImpl implements AccessTokenRepository {
  final AccessTokenRemoteSource remoteSource;

  AccessTokenRepositoryImpl(this.remoteSource);

  /// Repository implementation for getting the [AccessTokenEntity] from the Rest API
  @override
  Future<AccessTokenEntity> getToken(
    String clientId,
    String secret,
  ) async {
    return remoteSource.getToken(clientId, secret);
  }
}
