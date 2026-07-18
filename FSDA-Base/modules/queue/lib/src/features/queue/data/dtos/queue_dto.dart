import 'package:app_core/app_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/queue_entity.dart';
import '../../domain/enums/queue_status.dart';
import '../converters/queue_status_converter.dart';

part 'queue_dto.freezed.dart';
part 'queue_dto.g.dart';

@freezed
abstract class QueueDto with _$QueueDto {
  const QueueDto._();

  const factory QueueDto({
    required int id,
    required String queueNumber,
    @QueueStatusConverter() required QueueStatus status,
    @UtcDateTimeConverter() required DateTime createdAt,
    @UtcDateTimeConverter() required DateTime updatedAt,
  }) = _QueueDto;

  factory QueueDto.fromJson(Map<String, dynamic> json) =>
      _$QueueDtoFromJson(json);

  QueueEntity toEntity() {
    return QueueEntity(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      queueNumber: queueNumber,
      status: status,
    );
  }
}
