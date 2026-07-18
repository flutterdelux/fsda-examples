import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/travel_localizations.dart';

class DestinationPopularEmptyFeedback extends StatelessWidget {
  final VoidCallback onRefresh;
  const DestinationPopularEmptyFeedback({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = TravelLocalizations.of(context)!;
    return AppErrorFeedback(
      title: l10n.destinationPopularEmptyTitle,
      message: l10n.destinationPopularEmptyMessage,
      retryText: appL10n.refresh,
      onRetry: onRefresh,
    );
  }
}
