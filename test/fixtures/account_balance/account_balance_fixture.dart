import 'package:investec_open_api/data/models/account_balance_model.dart';

import '../shared_fixtures.dart';

const accountBalanceFixture = AccountBalanceModel(
  data: AccountBalanceDataModel(
    accountId: 'account-number',
    currentBalance: 1234.65,
    availableBalance: 9876.00,
    currency: 'ZAR',
  ),
  links: accountLinkFixture,
  meta: accountMetaFixture,
);
