import 'package:bloc/bloc.dart';

import '../../domain/params/task_create_param.dart';
import 'task_create_form_state.dart';

class TaskCreateFormCubit extends Cubit<TaskCreateFormState> {
  TaskCreateFormCubit() : super(const TaskCreateFormState());

  void update(TaskCreateParam? param, String? invalidMessage) {
    emit(state.copyWith(param: param, invalidMessage: invalidMessage));
  }
}
