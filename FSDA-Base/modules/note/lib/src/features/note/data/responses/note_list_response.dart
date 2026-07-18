import 'package:freezed_annotation/freezed_annotation.dart';

import '../dtos/note_dto.dart';

part 'note_list_response.freezed.dart';
part 'note_list_response.g.dart';

@freezed
abstract class NoteListResponse with _$NoteListResponse {
  const factory NoteListResponse({
    required String status,
    required String message,
    Map<String, dynamic>? meta,
    @JsonKey(fromJson: _noteListFromJson) List<NoteDto>? data,
    String? code,
    List<String>? errors,
  }) = _NoteListResponse;

  factory NoteListResponse.fromJson(Map<String, dynamic> json) =>
      _$NoteListResponseFromJson(json);
}

List<NoteDto>? _noteListFromJson(Object? json) {
  if (json is List) {
    return json
        .map((item) => NoteDto.fromJson(item as Map<String, dynamic>))
        .toList();
  }
  return null;
}
