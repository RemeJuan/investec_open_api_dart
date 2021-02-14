import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:investec_open_api/access_token/domain/repositories/access_token_repositorye.dart';
import 'package:investec_open_api/core/usecase.dart';

class GetAccessTokenUseCase implements UseCase<AccessTokenEntity, NoParams> {
  final AccessTokenRepository repository;

  GetAccessTokenUseCase(this.repository);

  @override
  Future<AccessTokenEntity> call(NoParams params) async {
    return await repository.getToken();
  }
}