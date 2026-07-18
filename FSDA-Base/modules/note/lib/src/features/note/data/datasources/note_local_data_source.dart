import '../dtos/note_dto.dart';

abstract interface class NoteLocalDataSource {
  // ------- Retrieval -------

  Future<List<NoteDto>> getNoteList();
  Future<void> cacheNoteList(List<NoteDto> data);

  // ------- Mutation -------
}
