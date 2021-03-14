import 'package:investec_open_api/data/models/shared_models.dart';
import 'package:investec_open_api/domain/entities/account_balance_entity.dart';

class AccountBalanceModel extends AccountBalanceEntity {
  const AccountBalanceModel({
    required AccountBalanceDataModel data,
    required LinksModel links,
    required MetaModel meta,
  }) : super(
          meta: meta,
          links: links,
          data: data,
        );

  factory AccountBalanceModel.fromJson(Map<String, dynamic> json) {
    return AccountBalanceModel(
      data: AccountBalanceDataModel.fromJson(
          json['data'] as Map<String, dynamic>),
      links: LinksModel.fromJson(json['links'] as Map<String, dynamic>),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }
}

class AccountBalanceDataModel extends AccountBalanceDataEntity {
  const AccountBalanceDataModel({
    required String accountId,
    required num currentBalance,
    required num availableBalance,
    required String currency,
  }) : super(
          accountId: accountId,
          availableBalance: availableBalance,
          currency: currency,
          currentBalance: currentBalance,
        );

  factory AccountBalanceDataModel.fromJson(Map<String, dynamic> json) {
    return AccountBalanceDataModel(
      currentBalance: json['currentBalance'] as num,
      currency: json['currency'] as String,
      availableBalance: json['availableBalance'] as num,
      accountId: json['accountId'] as String,
    );
  }
}
