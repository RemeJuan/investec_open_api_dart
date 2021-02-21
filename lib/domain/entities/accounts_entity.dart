import 'package:equatable/equatable.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

import 'account_entity.dart';

abstract class AccountsEntity extends Equatable {
  final AccountsDataEntity data;
  final AccountsLinksEntity links;
  final AccountsMetaEntity meta;

  const AccountsEntity({
    required this.data,
    required this.links,
    required this.meta,
  });

  @override
  List<Object?> get props => [data, meta, links];

  @override
  bool? get stringify => true;
}

abstract class AccountsDataEntity {
  final List<AccountEntity> accounts;

  const AccountsDataEntity({
    required this.accounts,
  });
}
