import '../dtos/note_dto.dart';

abstract interface class NoteRemoteDataSource {
  // ------- Retrieval -------

  Future<List<NoteDto>> getNoteList();

  // ------- Mutation -------
}
