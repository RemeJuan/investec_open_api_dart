import 'package:investec_open_api/domain/entities/shared_entities.dart';

class AccountsMetaModel extends AccountsMetaEntity {
  const AccountsMetaModel({
    required int totalPages,
  }) : super(
          totalPages: totalPages,
        );

  factory AccountsMetaModel.fromJson(Map<String, dynamic> json) {
    return AccountsMetaModel(
      totalPages: json['totalPages'] as int,
    );
  }
}

class AccountsLinksModel extends AccountsLinksEntity {
  const AccountsLinksModel({
    required String self,
  }) : super(self: self);

  factory AccountsLinksModel.fromJson(Map<String, dynamic> json) {
    return AccountsLinksModel(
      self: json['self'] as String,
    );
  }
}
