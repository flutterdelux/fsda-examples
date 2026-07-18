import 'package:app_core/app_core.dart';

import '../entities/note_entity.dart';
import '../repositories/note_repository.dart';

class NoteListUseCase extends NoParamUseCase<List<NoteEntity>> {
  final NoteRepository _repository;

  const NoteListUseCase({required NoteRepository noteRepository})
    : _repository = noteRepository;

  @override
  AsyncResult<List<NoteEntity>> call() => _repository.getNoteList();
}
