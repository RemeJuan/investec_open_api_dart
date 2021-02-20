import 'package:equatable/equatable.dart';

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
  List<Object?> get props => [meta, links];

  @override
  bool? get stringify => true;
}

abstract class AccountsDataEntity {
  final List<AccountEntity> accounts;

  const AccountsDataEntity({
    required this.accounts,
  });
}

abstract class AccountsMetaEntity extends Equatable {
  final int totalPages;

  const AccountsMetaEntity({
    required this.totalPages,
  });

  @override
  List<Object?> get props => [totalPages];

  @override
  bool? get stringify => true;
}

abstract class AccountsLinksEntity extends Equatable {
  final String self;

  const AccountsLinksEntity({
    required this.self,
  });

  @override
  List<Object?> get props => [self];

  @override
  bool? get stringify => true;
}
