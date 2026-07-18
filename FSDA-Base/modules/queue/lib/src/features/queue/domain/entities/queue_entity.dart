import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/queue_status.dart';

part 'queue_entity.freezed.dart';

@freezed
abstract class QueueEntity with _$QueueEntity {
  const factory QueueEntity({
    required int id,
    required String queueNumber,
    required QueueStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _QueueEntity;
}
