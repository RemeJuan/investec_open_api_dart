import 'package:equatable/equatable.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';

abstract class TransactionsEntity extends Equatable {
  final TransactionsDataEntity data;
  final LinksEntity links;
  final MetaEntity meta;

  const TransactionsEntity({
    required this.data,
    required this.links,
    required this.meta,
  });

  @override
  List<Object?> get props => [meta, links];

  @override
  bool? get stringify => true;
}

abstract class TransactionsDataEntity {
  final List<TransactionEntity> transactions;

  const TransactionsDataEntity({
    required this.transactions,
  });
}

abstract class TransactionEntity extends Equatable {
  final String accountID;
  final String type;
  final String transactionType;
  final String status;
  final String description;
  final String cardNumber;
  final int postedOrder;
  final String postingDate;
  final String valueDate;
  final String actionDate;
  final String transactionDate;
  final double amount;
  final double runningBalance;

  TransactionEntity({
    required this.accountID,
    required this.type,
    required this.transactionType,
    required this.status,
    required this.description,
    required this.cardNumber,
    required this.postedOrder,
    required this.postingDate,
    required this.valueDate,
    required this.actionDate,
    required this.transactionDate,
    required this.amount,
    required this.runningBalance,
  });

  @override
  List<Object?> get props => [
        accountID,
        type,
        transactionType,
        status,
        description,
        cardNumber,
        postedOrder,
        postingDate,
        valueDate,
        actionDate,
        transactionDate,
        amount,
        runningBalance,
      ];

  @override
  bool? get stringify => true;
}
