import 'dart:convert';

import 'package:investec_open_api/data/models/access_token_model.dart';
import 'package:investec_open_api/domain/entities/access_token_entity.dart';
import 'package:test/test.dart';

import '../../fixtures/access_token/access_token_fixture.dart';
import '../../fixtures/fixture_reader.dart';

void main() {
  test('should be a subclass of [AccessTokenEntity]', () async {
    //assert
    expect(accessTokenFixture, isA<AccessTokenEntity>());
  });

  test('fromJson - should return a valid model', () async {
    //arrange
    final jsonMap = jsonDecode(fixture('access_token/get_access_token.json'))
        as Map<String, dynamic>;
    //act
    final result = AccessTokenModel.fromJson(jsonMap);
    //assert
    expect(result, accessTokenFixture);
  });

  test('verify stringify enabled', () async {
    //assert
    expect(accessTokenFixture.stringify, true);
  });
}
