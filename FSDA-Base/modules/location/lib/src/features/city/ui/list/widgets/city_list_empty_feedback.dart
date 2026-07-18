import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/location_localizations.dart';

class CityListEmptyFeedback extends StatelessWidget {
  final VoidCallback onRefresh;
  const CityListEmptyFeedback({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = LocationLocalizations.of(context)!;
    return AppEmptyFeedback(
      title: l10n.cityListEmptyTitle,
      message: l10n.cityListEmptyMessage,
      onRefresh: onRefresh,
      refreshText: appL10n.refresh,
    );
  }
}
