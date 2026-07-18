import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/travel_localizations.dart';

class DestinationPopularSection extends StatelessWidget {
  final Widget content;
  final VoidCallback? onSeeAllPressed;
  const DestinationPopularSection({
    super.key,
    required this.content,
    this.onSeeAllPressed,
  });

  @override
  Widget build(BuildContext context) {
    final appL10n = AppLocalizations.of(context)!;
    final l10n = TravelLocalizations.of(context)!;
    return AppSection(
      header: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.screen),
        child: AppSectionHeader(
          titleText: l10n.destinationPopularTitle,
          actionText: appL10n.seeAll,
          onActionPressed: onSeeAllPressed,
        ),
      ),
      content: content,
    );
  }
}
