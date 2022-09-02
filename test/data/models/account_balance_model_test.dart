import 'dart:convert';

import 'package:investec_open_api/data/models/account_balance_model.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';
import 'package:test/test.dart';

import '../../fixtures/account_balance/account_balance_fixture.dart';
import '../../fixtures/fixture_reader.dart';

void main() {
  test('should be a subclass of [AccountBalanceEntity]', () async {
    //assert
    expect(accountBalanceFixture, isA<AccountBalanceEntity>());
  });

  group('AccountBalanceModel', () {
    test('fromJson - should return a valid model', () async {
      //arrange
      final jsonMap = jsonDecode(
        fixture('account_balance/get_account_balance.json'),
      ) as Map<String, dynamic>;
      //act
      final result = AccountBalanceModel.fromJson(jsonMap);
      //assert
      expect(result, accountBalanceFixture);
    });
  });

  test('verify stringify enabled', () async {
    //assert
    expect(accountBalanceFixture.stringify, true);
    expect(accountBalanceDataFixture.stringify, true);
  });
}
