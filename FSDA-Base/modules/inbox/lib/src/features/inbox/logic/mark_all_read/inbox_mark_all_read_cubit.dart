import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/usecases/inbox_mark_all_read_use_case.dart';
import 'inbox_mark_all_read_state.dart';

class InboxMarkAllReadCubit extends Cubit<InboxMarkAllReadState> {
  final InboxMarkAllReadUseCase _useCase;

  InboxMarkAllReadCubit({
    required InboxMarkAllReadUseCase inboxMarkAllReadUseCase,
  }) : _useCase = inboxMarkAllReadUseCase,
       super(const InboxMarkAllReadState.initial());

  Future<void> markAllInboxRead() async {
    emit(const InboxMarkAllReadState.loading());

    final result = await _useCase();

    emit(
      result.when(
        success: (_) => const InboxMarkAllReadState.success(),
        failure: (failure) => InboxMarkAllReadState.failure(failure: failure),
      ),
    );
  }
}
