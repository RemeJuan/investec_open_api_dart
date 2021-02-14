import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';

const accessTokenFixture = AccessTokenEntity(
  tokenType: 'Bearer',
  scope: 'accounts',
  expires: 1799,
  accessToken: 'mock-token',
);