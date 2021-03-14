import 'package:equatable/equatable.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

abstract class AccountsEntity extends Equatable {
  final AccountsDataEntity data;
  final LinksEntity links;
  final MetaEntity meta;

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

abstract class AccountEntity extends Equatable {
  final String accountId;
  final String accountNumber;
  final String accountName;
  final String referenceName;
  final String productName;

  const AccountEntity({
    required this.accountId,
    required this.accountNumber,
    required this.accountName,
    required this.referenceName,
    required this.productName,
  });

  @override
  List<Object?> get props => [
        accountId,
        accountNumber,
        accountName,
        referenceName,
        productName,
      ];

  @override
  bool? get stringify => true;
}
