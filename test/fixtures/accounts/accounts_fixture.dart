import 'package:investec_open_api/domain/entities/account_entity.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';

const accountsFixture = AccountsEntity(
  data: AccountsData(
    accounts: [accountFixture],
  ),
  links: accountLinkFixture,
  meta: accountMetaFixture,
);

const accountFixture = AccountEntity(
  accountId: '123',
  accountNumber: '112233',
  accountName: 'John Smith',
  referenceName: 'Mr J Smith',
  productName: 'Private Bank Account',
);

const accountLinkFixture = AccountsLinks(
  self: 'mock-url',
);

const accountMetaFixture = AccountsMeta(
  totalPages: 1,
);
