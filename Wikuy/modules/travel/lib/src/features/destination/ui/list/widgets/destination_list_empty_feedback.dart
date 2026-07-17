import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/travel_localizations.dart';

class DestinationListEmptyFeedback extends StatelessWidget {
  final VoidCallback onRefresh;
  const DestinationListEmptyFeedback({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = TravelLocalizations.of(context)!;
    return AppEmptyFeedback(
      title: l10n.destinationListEmptyTitle,
      message: l10n.destinationListEmptyMessage,
      onRefresh: onRefresh,
      refreshText: appL10n.refresh,
    );
  }
}
