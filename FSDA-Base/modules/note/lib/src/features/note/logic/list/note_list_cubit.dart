import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/note_list_use_case.dart';
import 'note_list_state.dart';

class NoteListCubit extends Cubit<NoteListState> {
  final NoteListUseCase _useCase;

  NoteListCubit({required NoteListUseCase useCase})
    : _useCase = useCase,
      super(const NoteListState.initial());

  Future<void> getNoteList() async {
    emit(const NoteListState.loading());

    final result = await _useCase();

    emit(
      result.when(
        success: (data) => NoteListState.loaded(data: data),
        failure: (failure) => NoteListState.failure(failure: failure),
      ),
    );
  }
}
