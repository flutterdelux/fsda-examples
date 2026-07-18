import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/queue_localizations.dart';
import '../../../domain/entities/queue_entity.dart';
import '../../shared/extensions/queue_status_x.dart';

class QueueTakeContent extends StatelessWidget {
  final QueueEntity queue;
  final VoidCallback? onTakeQueue;
  const QueueTakeContent({super.key, required this.queue, this.onTakeQueue});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = QueueLocalizations.of(context)!;
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(queue.queueNumber, style: textTheme.displayLarge),
          AppGap.md,
          Text('${l10n.queueStatusLabel}:', style: textTheme.bodyMedium),
          AppGap.sm,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 6),
            decoration: BoxDecoration(
              color: queue.status.color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppRadius.button),
            ),
            child: Text(
              queue.status.localize(context),
              style: textTheme.titleMedium,
            ),
          ),
          AppGap.lg,
          FilledButton(
            onPressed: onTakeQueue,
            child: Text(l10n.queueTakeAction),
          ),
        ],
      ),
    );
  }
}
