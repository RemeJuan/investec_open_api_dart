import 'package:investec_open_api/data/models/shared_models.dart';
import 'package:investec_open_api/domain/entities/shared_entities.dart';
import 'package:investec_open_api/domain/entities/transactions_entities.dart';

class TransactionsModel extends TransactionsEntity {
  const TransactionsModel({
    required TransactionsDataEntity data,
    required LinksEntity links,
    required MetaEntity meta,
  }) : super(
          data: data,
          links: links,
          meta: meta,
        );

  factory TransactionsModel.fromJson(Map<String, dynamic> json) {
    return TransactionsModel(
      data:
          TransactionsDataModel.fromJson(json['data'] as Map<String, dynamic>),
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }
}

class TransactionsDataModel extends TransactionsDataEntity {
  TransactionsDataModel({
    required List<TransactionEntity> transactions,
  }) : super(
          transactions: transactions,
        );

  factory TransactionsDataModel.fromJson(Map<String, dynamic> json) {
    final transactions = <TransactionModel>[];

    for (final Map<String, dynamic> tr in json['transactions']) {
      transactions.add(TransactionModel.fromJson(tr));
    }

    return TransactionsDataModel(
      transactions: transactions,
    );
  }
}

class TransactionModel extends TransactionEntity {
  TransactionModel({
    required String accountID,
    required String type,
    required String transactionType,
    required String status,
    required String description,
    required String cardNumber,
    required int postedOrder,
    required String postingDate,
    required String valueDate,
    required String actionDate,
    required String transactionDate,
    required double amount,
    required double runningBalance,
  }) : super(
          accountID: accountID,
          type: type,
          transactionType: transactionType,
          status: status,
          description: description,
          cardNumber: cardNumber,
          postedOrder: postedOrder,
          postingDate: postingDate,
          valueDate: valueDate,
          actionDate: actionDate,
          transactionDate: transactionDate,
          amount: amount,
          runningBalance: runningBalance,
        );

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      accountID: json['accountID'] as String,
      type: json['type'] as String,
      transactionType: json['transactionType'] as String,
      status: json['status'] as String,
      description: json['description'] as String,
      cardNumber: json['cardNumber'] as String,
      postedOrder: json['postedOrder'] as int,
      postingDate: json['postingDate'] as String,
      valueDate: json['valueDate'] as String,
      actionDate: json['actionDate'] as String,
      transactionDate: json['transactionDate'] as String,
      amount: json['amount'] as double,
      runningBalance: json['runningBalance'] as double,
    );
  }
}
