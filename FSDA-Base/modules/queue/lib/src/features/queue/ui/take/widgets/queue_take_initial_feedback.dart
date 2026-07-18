import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/queue_localizations.dart';

class QueueTakeInitialFeedback extends StatelessWidget {
  final VoidCallback? onTakeQueue;
  const QueueTakeInitialFeedback({super.key, this.onTakeQueue});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = QueueLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.queueTakeInitialMessage,
              style: textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            AppGap.lg,
            FilledButton(
              onPressed: onTakeQueue,
              child: Text(l10n.queueTakeAction),
            ),
          ],
        ),
      ),
    );
  }
}
