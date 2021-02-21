import 'package:investec_open_api/data/models/account_model.dart';
import 'package:investec_open_api/data/models/accounts_model.dart';
import 'package:investec_open_api/data/models/shared_models.dart';

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

const accountLinkFixture = AccountsLinksModel(
  self: 'mock-url',
);

const accountMetaFixture = AccountsMetaModel(
  totalPages: 1,
);
