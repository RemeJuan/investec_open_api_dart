import 'package:investec_open_api/data/models/account_model.dart';
import 'package:investec_open_api/data/models/accounts_model.dart';

import '../shared_fixtures.dart';

const accountsFixture = AccountsModel(
  data: AccountsDataModel(
    accounts: [accountFixture],
  ),
  links: accountLinkFixture,
  meta: accountMetaFixture,
);

const accountFixture = AccountModel(
  accountId: '123',
  accountNumber: '112233',
  accountName: 'John Smith',
  referenceName: 'Mr J Smith',
  productName: 'Private Bank Account',
);
