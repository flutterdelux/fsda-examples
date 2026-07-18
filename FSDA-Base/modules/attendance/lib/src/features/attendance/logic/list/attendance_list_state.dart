import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/attendance_entity.dart';

part 'attendance_list_state.freezed.dart';

@freezed
sealed class AttendanceListState with _$AttendanceListState {
  const factory AttendanceListState.initial() = _Initial;
  const factory AttendanceListState.loading() = _Loading;
  const factory AttendanceListState.loaded({
    required List<AttendanceEntity> data,
  }) = _Loaded;
  const factory AttendanceListState.failure({required Failure failure}) =
      _Failure;
}
