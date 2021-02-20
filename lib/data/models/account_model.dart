import 'package:investec_open_api/domain/entities/account_entity.dart';

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
