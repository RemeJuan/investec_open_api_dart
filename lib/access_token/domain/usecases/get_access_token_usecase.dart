import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';
import 'package:investec_open_api/core/usecase.dart';

class GetAccessTokenUseCase
    implements UseCase<AccessTokenEntity, GetAccessTokenParams> {
  final AccessTokenRepository repository;

  GetAccessTokenUseCase(this.repository);

  /// REST call for retrieving the [AccessTokenEntity} data from Investec
  @override
  Future<AccessTokenEntity> call(GetAccessTokenParams params) async {
    return await repository.getToken(params.clientId, params.secret);
  }
}

class GetAccessTokenParams {
  final String clientId;
  final String secret;

  GetAccessTokenParams(this.clientId, this.secret);
}
