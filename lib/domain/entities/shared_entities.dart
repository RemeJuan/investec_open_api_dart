import 'package:equatable/equatable.dart';

abstract class MetaEntity extends Equatable {
  final int totalPages;

  const MetaEntity({
    required this.totalPages,
  });

  @override
  List<Object?> get props => [totalPages];

  @override
  bool? get stringify => true;
}

abstract class LinksEntity extends Equatable {
  final String self;

  const LinksEntity({
    required this.self,
  });

  @override
  List<Object?> get props => [self];

  @override
  bool? get stringify => true;
}
