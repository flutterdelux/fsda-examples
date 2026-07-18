import 'package:json_annotation/json_annotation.dart';

import '../../domain/enums/queue_status.dart';

class QueueStatusConverter extends JsonConverter<QueueStatus, String> {
  const QueueStatusConverter();

  @override
  QueueStatus fromJson(String json) {
    return switch (json) {
      'waiting' => QueueStatus.waiting,
      'called' => QueueStatus.called,
      'completed' => QueueStatus.completed,
      _ => throw ArgumentError('Unknown QueueStatus: $json'),
    };
  }

  @override
  String toJson(QueueStatus object) {
    return switch (object) {
      QueueStatus.waiting => 'waiting',
      QueueStatus.called => 'called',
      QueueStatus.completed => 'completed',
    };
  }
}
