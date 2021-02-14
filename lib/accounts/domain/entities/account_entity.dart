import 'package:equatable/equatable.dart';

class AccountEntity extends Equatable {
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

  factory AccountEntity.fromJson(Map<String, dynamic> json) {
    return AccountEntity(
      accountId: json['accountId'] as String,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
      referenceName: json['referenceName'] as String,
      productName: json['productName'] as String,
    );
  }

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
