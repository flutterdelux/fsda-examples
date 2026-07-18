import 'package:app_core/app_core.dart';
import '../entities/note_entity.dart';

abstract interface class NoteRepository {
  // ------- Retrieval -------

  AsyncResult<List<NoteEntity>> getNoteList();

  // ------- Mutation -------
}
