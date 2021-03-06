import 'package:investec_open_api/data/models/shared_models.dart';
import 'package:investec_open_api/domain/entities/account_entity.dart';
import 'package:investec_open_api/domain/entities/accounts_entity.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

import 'account_model.dart';

class AccountsModel extends AccountsEntity {
  const AccountsModel({
    required AccountsDataEntity data,
    required AccountsLinksEntity links,
    required AccountsMetaEntity meta,
  }) : super(
          data: data,
          links: links,
          meta: meta,
        );

  factory AccountsModel.fromJson(Map<String, dynamic> json) {
    return AccountsModel(
      data: AccountsDataModel.fromJson(json['data'] as Map<String, dynamic>),
      links: AccountsLinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: AccountsMetaModel.fromJson(json['meta'] as Map<String, dynamic>),
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
