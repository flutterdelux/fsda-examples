import 'package:flutter/material.dart';
import '../../../../../generated/location_localizations.dart';

class CityListView extends StatelessWidget {
  final Widget content;
  const CityListView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = LocationLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.cityListTitle)),
      body: content,
    );
  }
}
