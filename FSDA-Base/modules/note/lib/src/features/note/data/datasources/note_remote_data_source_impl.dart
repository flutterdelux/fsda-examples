import 'package:app_core/app_core.dart';

import '../../../../shared/data/errors/note_exception.dart';
import '../dtos/note_dto.dart';
import '../responses/note_list_response.dart';
import 'note_remote_data_source.dart';

class NoteRemoteDataSourceImpl implements NoteRemoteDataSource {
  final ApiClient _apiClient;

  const NoteRemoteDataSourceImpl({required ApiClient apiClient})
    : _apiClient = apiClient;

  // ------- Retrieval -------

  @override
  Future<List<NoteDto>> getNoteList() async {
    final response = await _apiClient.get<Map<String, dynamic>>('/notes');
    if (response.statusCode == 200) {
      final noteListResponse = NoteListResponse.fromJson(response.body);
      if (noteListResponse.data != null) {
        return noteListResponse.data!;
      }
      throw const NoteException.noteNotFound();
    }
  
    throw NoteException.fromApiResponse(response);
  }

  // ------- Mutation -------
}
