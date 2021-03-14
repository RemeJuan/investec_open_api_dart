import 'package:investec_open_api/data/models/shared_models.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

class AccountsModel extends AccountsEntity {
  const AccountsModel({
    required AccountsDataEntity data,
    required LinksEntity links,
    required MetaEntity meta,
  }) : super(
          data: data,
          links: links,
          meta: meta,
        );

  factory AccountsModel.fromJson(Map<String, dynamic> json) {
    return AccountsModel(
      data: AccountsDataModel.fromJson(json['data'] as Map<String, dynamic>),
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }
}

class AccountsDataModel extends AccountsDataEntity {
  const AccountsDataModel({
    required List<AccountEntity> accounts,
  }) : super(
          accounts: accounts,
        );

  factory AccountsDataModel.fromJson(Map<String, dynamic> json) {
    final accounts = <AccountModel>[];

    for (final Map<String, dynamic> acc in json['accounts']) {
      accounts.add(AccountModel.fromJson(acc));
    }

    return AccountsDataModel(
      accounts: accounts,
    );
  }
}

class AccountModel extends AccountEntity {
  const AccountModel({
    required String accountId,
    required String accountNumber,
    required String accountName,
    required String referenceName,
    required String productName,
  }) : super(
            accountId: accountId,
            accountName: accountName,
            accountNumber: accountNumber,
            referenceName: referenceName,
            productName: productName);

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    return AccountModel(
      accountId: json['accountId'] as String,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
      referenceName: json['referenceName'] as String,
      productName: json['productName'] as String,
    );
  }
}
