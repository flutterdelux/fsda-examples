import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/note_entity.dart';

part 'note_list_state.freezed.dart';

@freezed
sealed class NoteListState with _$NoteListState {
  const factory NoteListState.initial() = _Initial;
  const factory NoteListState.loading() = _Loading;
  const factory NoteListState.loaded({required List<NoteEntity> data}) =
      _Loaded;
  const factory NoteListState.failure({required Failure failure}) = _Failure;
}
