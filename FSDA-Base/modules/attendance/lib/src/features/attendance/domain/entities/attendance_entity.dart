import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_entity.freezed.dart';

@freezed
abstract class AttendanceEntity with _$AttendanceEntity {
  const factory AttendanceEntity({
    required int id,
    required String userId,
    required DateTime clockAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AttendanceEntity;
}
