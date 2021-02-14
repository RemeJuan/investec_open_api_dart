import 'dart:convert';

import 'package:investec_open_api/accounts/domain/entities/accounts_entity.dart';
import 'package:test/test.dart';

import '../../../fixtures/accounts/accounts_fixture.dart';
import '../../../fixtures/fixture_reader.dart';

void main() {
  test('should be a subclass of [AccessTokenEntity]', () async {
    //assert
    expect(accountsFixture, isA<AccountsEntity>());
  });

  test('fromJson - should return a valid model', () async {
    //arrange
    final jsonMap = jsonDecode(
      fixture('accounts/get_accounts.json'),
    ) as Map<String, dynamic>;
    //act
    final result = AccountsEntity.fromJson(jsonMap);
    //assert
    expect(result, accountsFixture);
  });

  test('verify stringify enabled', () async {
    //assert
    expect(accountsFixture.stringify, true);
    expect(accountFixture.stringify, true);
    expect(accountLinkFixture.stringify, true);
    expect(accountMetaFixture.stringify, true);
  });
}
