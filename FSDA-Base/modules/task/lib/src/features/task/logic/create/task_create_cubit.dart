import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/params/task_create_param.dart';
import '../../domain/usecases/task_create_use_case.dart';
import 'task_create_state.dart';

class TaskCreateCubit extends Cubit<TaskCreateState> {
  final TaskCreateUseCase _useCase;

  TaskCreateCubit({required TaskCreateUseCase useCase})
    : _useCase = useCase,
      super(const TaskCreateState.initial());

  Future<void> createTask(TaskCreateParam param) async {
    emit(const TaskCreateState.loading());

    final result = await _useCase(param);

    emit(
      result.when(
        success: (data) => TaskCreateState.success(data: data),
        failure: (failure) => TaskCreateState.failure(failure: failure),
      ),
    );
  }
}
