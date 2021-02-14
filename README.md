# Investec Programmable Banking Open API Wrapper

A Dart null-safe wrapper to be able to use the Investec OpenAPI from your Dart/Flutter projects

[Investec developer documentation](https://developer.investec.com/programmable-banking/#programmable-banking)

[![codecov](https://codecov.io/gh/RemeJuan/investec_open_api_dart/branch/master/graph/badge.svg?token=3T9DEDF1VT)](https://codecov.io/gh/RemeJuan/investec_open_api_dart)
![Flutter Test](https://github.com/RemeJuan/investec_open_api_dart/workflows/Flutter%20Test/badge.svg?branch=master)
---

## Getting Started

Currently and Active WIP and has not been submitted to pub.dev yet.

---

## Usage

---

## Setup:

```dart
import 'package:http/http.dart' as http;
import 'investec_open_api/investec_open_api.dart';

final httpClient = http.Client();

final api = InvestecOpenAPI(
  clientId: 'YOUR_CLIENT_ID',
  secret: 'YOUR_SECRET',
  httpClient: httpClient,
);
```

---

## Available Methods:

#### api.getAccounts()

This returns a list of your accounts as well as some meta data

**Sample API Response**

```json
{
  "data": {
    "accounts": [
      {
        "accountId": "123",
        "accountNumber": "112233",
        "accountName": "John Smith",
        "referenceName": "Mr J Smith",
        "productName": "Private Bank Account"
      }
    ]
  },
  "links": {
    "self": "mock-url"
  },
  "meta": {
    "totalPages": 1
  }
}
```

**Sample resulting dart class**

```dart

const accounts = AccountsEntity(
  data: AccountsData(
    accounts: [
      AccountEntity(
        accountId: '123',
        accountNumber: '112233',
        accountName: 'John Smith',
        referenceName: 'Mr J Smith',
        productName: 'Private Bank Account',
      )
    ],
  ),
  links: AccountsLinks(
    self: 'mock-url',
  ),
  meta: AccountsMeta(
    totalPages: 1,
  ),
);
```

#### api.getAccountTransactions() (Unimplemented)

#### api.getAccountBalance() (Unimplemented)

---

Hope you find this useful! Please give a star and feel free to contribute or log issues and feature requests!

And if you want to say thanks, then go ahead:

<a href="https://www.buymeacoffee.com/remelehane" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-red.png" alt="Buy Me A Coffee" style="height: 51px !important;width: 217px !important;" ></a>
