import 'dart:convert';

import 'package:investec_open_api/data/models/accounts_model.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';
import 'package:test/test.dart';

import '../../fixtures/accounts/accounts_fixture.dart';
import '../../fixtures/fixture_reader.dart';
import '../../fixtures/shared_fixtures.dart';

void main() {
  test('should be a subclass of [AccessTokenEntity]', () async {
    //assert
    expect(accountsFixture, isA<AccountsEntity>());
  });

  group('AccountsModel', () {
    test('fromJson - should return a valid model', () async {
      //arrange
      final jsonMap = jsonDecode(
        fixture('accounts/get_accounts.json'),
      ) as Map<String, dynamic>;
      //act
      final result = AccountsModel.fromJson(jsonMap);
      //assert
      expect(result, accountsFixture);
    });
  });

  group('AccountModel', () {
    test('fromJson - should return a valid model', () async {
      //arrange

      //act
      final result = AccountModel.fromJson(<String, dynamic>{
        'accountId': '123',
        'accountNumber': '112233',
        'accountName': 'John Smith',
        'referenceName': 'Mr J Smith',
        'productName': 'Private Bank Account'
      });
      //assert
      expect(result, accountFixture);
    });
  });

  test('verify stringify enabled', () async {
    //assert
    expect(accountsFixture.stringify, true);
    expect(accountFixture.stringify, true);
    expect(accountLinkFixture.stringify, true);
    expect(accountMetaFixture.stringify, true);
  });
}
