import 'package:equatable/equatable.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

abstract class AccountBalanceEntity extends Equatable {
  final AccountBalanceDataEntity data;
  final AccountsLinksEntity links;
  final AccountsMetaEntity meta;

  const AccountBalanceEntity({
    required this.data,
    required this.links,
    required this.meta,
  });

  @override
  List<Object?> get props => [data, meta, links];

  @override
  bool? get stringify => true;
}

abstract class AccountBalanceDataEntity extends Equatable {
  final String accountId;
  final num currentBalance;
  final num availableBalance;
  final String currency;

  const AccountBalanceDataEntity({
    required this.accountId,
    required this.currentBalance,
    required this.availableBalance,
    required this.currency,
  });

  @override
  List<Object?> get props => [
        accountId,
        currentBalance,
        availableBalance,
        currency,
      ];

  @override
  bool? get stringify => true;
}
