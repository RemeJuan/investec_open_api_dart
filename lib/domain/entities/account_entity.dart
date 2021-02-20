import 'package:equatable/equatable.dart';

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
