import 'package:equatable/equatable.dart';

import 'account_entity.dart';

class AccountsEntity extends Equatable {
  final AccountsData data;
  final AccountsLinks links;
  final AccountsMeta meta;

  const AccountsEntity({
    required this.data,
    required this.links,
    required this.meta,
  });

  factory AccountsEntity.fromJson(Map<String, dynamic> json) {
    return AccountsEntity(
      data: AccountsData.fromJson(json['data'] as Map<String, dynamic>),
      links: AccountsLinks.fromJson(json['links'] as Map<String, dynamic>),
      meta: AccountsMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );
  }

  @override
  List<Object?> get props => [meta, links];

  @override
  bool? get stringify => true;
}

class AccountsData {
  final List<AccountEntity> accounts;

  const AccountsData({
    required this.accounts,
  });

  factory AccountsData.fromJson(Map<String, dynamic> json) {
    final accounts = <AccountEntity>[];

    for (final Map<String, dynamic> acc in json['accounts']) {
      accounts.add(AccountEntity.fromJson(acc));
    }

    return AccountsData(
      accounts: accounts,
    );
  }
}

class AccountsMeta extends Equatable {
  final int totalPages;

  const AccountsMeta({
    required this.totalPages,
  });

  factory AccountsMeta.fromJson(Map<String, dynamic> json) {
    return AccountsMeta(
      totalPages: json['totalPages'] as int,
    );
  }

  @override
  List<Object?> get props => [totalPages];

  @override
  bool? get stringify => true;
}

class AccountsLinks extends Equatable {
  final String self;

  const AccountsLinks({
    required this.self,
  });

  factory AccountsLinks.fromJson(Map<String, dynamic> json) {
    return AccountsLinks(
      self: json['self'] as String,
    );
  }

  @override
  List<Object?> get props => [self];

  @override
  bool? get stringify => true;
}
