import 'package:equatable/equatable.dart';

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
