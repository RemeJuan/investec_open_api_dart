import 'package:investec_open_api/domain/entities/shared_entities.dart';

class MetaModel extends MetaEntity {
  const MetaModel({
    required int totalPages,
  }) : super(
          totalPages: totalPages,
        );

  factory MetaModel.fromJson(Map<String, dynamic> json) {
    return MetaModel(
      totalPages: json['totalPages'] as int,
    );
  }
}

class LinksModel extends LinksEntity {
  const LinksModel({
    required String self,
  }) : super(self: self);

  factory LinksModel.fromJson(Map<String, dynamic> json) {
    return LinksModel(
      self: json['self'] as String,
    );
  }
}
