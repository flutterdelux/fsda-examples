import 'dart:async';

import 'package:app_core/app_core.dart';
import 'package:bloc/bloc.dart';

import '../../domain/entities/attendance_entity.dart';
import '../../domain/usecases/attendance_list_use_case.dart';
import 'attendance_list_state.dart';

class AttendanceListCubit extends Cubit<AttendanceListState> {
  final AttendanceListUseCase _useCase;

  StreamSubscription<Result<List<AttendanceEntity>>>? _subscription;

  AttendanceListCubit({required AttendanceListUseCase attendanceListUseCase})
    : _useCase = attendanceListUseCase,
      super(const AttendanceListState.initial());

  void watchAttendanceList() {
    emit(const AttendanceListState.loading());

    _subscription?.cancel();
    _subscription = _useCase().listen(
      (result) {
        emit(
          result.when(
            success: (data) => AttendanceListState.loaded(data: data),
            failure: (failure) => AttendanceListState.failure(failure: failure),
          ),
        );
      },
      onError: (e) {
        emit(
          AttendanceListState.failure(
            failure: CoreException.fromException(
              e.toString(),
              st: StackTrace.current,
            ).toFailure(),
          ),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
