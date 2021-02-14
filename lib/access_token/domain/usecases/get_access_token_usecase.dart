import 'package:equatable/equatable.dart';
import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';
import 'package:investec_open_api/core/usecase.dart';

class GetAccessTokenUseCase
    implements UseCase<AccessTokenEntity, GetAccessTokenParams> {
  final AccessTokenRepository repository;

  GetAccessTokenUseCase(this.repository);

  @override
  Future<AccessTokenEntity> call(GetAccessTokenParams params) async {
    return await repository.getToken(params.clientId, params.secret);
  }
}

class GetAccessTokenParams extends Equatable {
  final String clientId;
  final String secret;

  GetAccessTokenParams(this.clientId, this.secret);

  @override
  List<Object?> get props => [clientId, secret];
}
