import 'package:flutter/material.dart';
import '../../../../../generated/travel_localizations.dart';

class DestinationListView extends StatelessWidget {
  final Widget content;
  const DestinationListView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = TravelLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.destinationListTitle)),
      body: content,
    );
  }
}
