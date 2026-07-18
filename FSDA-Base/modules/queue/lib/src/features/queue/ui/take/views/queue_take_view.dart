import 'package:flutter/material.dart';
import '../../../../../generated/queue_localizations.dart';

class QueueTakeView extends StatelessWidget {
  final Widget content;
  const QueueTakeView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = QueueLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.queueTakeTitle)),
      body: content,
    );
  }
}
