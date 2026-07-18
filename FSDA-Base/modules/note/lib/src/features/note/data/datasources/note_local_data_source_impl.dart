import 'package:app_core/app_core.dart';

import '../dtos/note_dto.dart';
import 'note_local_data_source.dart';

class NoteLocalDataSourceImpl
    implements NoteLocalDataSource {
  final DatabaseClient _client;

  const NoteLocalDataSourceImpl({
    required DatabaseClient client,
  }) : _client = client;

  // ------- Retrieval -------

  @override
  Future<List<NoteDto>> getNoteList() async {
    try {
      final rows = await _client.findAll('notes');
      return rows.map((row) => NoteDto.fromJson(row)).toList();
    } catch (e, st) {
      throw CoreException.cacheError(
        msg: 'Failed to load notes from local cache: $e',
        st: st,
      );
    }
  }
  
  @override
  Future<void> cacheNoteList(List<NoteDto> data) async {
    try {
      await _client.insertMany(
        'notes',
        data.map((item) => item.toJson()).toList(),
      );
    } catch (e, st) {
      throw CoreException.cacheError(
        msg: 'Failed to cache notes to local storage: $e',
        st: st,
      );
    }
  }

  // ------- Mutation -------
}
