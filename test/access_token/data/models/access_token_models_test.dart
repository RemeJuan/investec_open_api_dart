import 'dart:convert';

import 'package:investec_open_api/access_token/domain/entities/access_token_entity.dart';
import 'package:test/test.dart';

import '../../../fixtures/access_token/access_token_fixture.dart';
import '../../../fixtures/fixture_reader.dart';

void main() {
  test('should be a subclass of [AccessTokenEntity]', () async {
    //assert
    expect(accessTokenFixture, isA<AccessTokenEntity>());
  });

  test('fromJson - should return a valid model', () async {
    //arrange
    final jsonMap = jsonDecode(fixture('access_token/get_access_token.json'));
    //act
    final result = AccessTokenEntity.fromJson(jsonMap);
    //assert
    expect(result, accessTokenFixture);
  });
}