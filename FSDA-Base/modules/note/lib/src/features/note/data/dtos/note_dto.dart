import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/note_entity.dart';

part 'note_dto.freezed.dart';
part 'note_dto.g.dart';

@freezed
abstract class NoteDto with _$NoteDto {
  const NoteDto._();

  const factory NoteDto({
    required int id,
    required String title,
    required String content,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _NoteDto;

  factory NoteDto.fromJson(Map<String, Object?> json) =>
      _$NoteDtoFromJson(json);

  NoteEntity toEntity() {
    return NoteEntity(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
