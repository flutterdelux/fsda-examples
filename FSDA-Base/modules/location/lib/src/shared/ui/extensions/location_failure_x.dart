import 'package:flutter/material.dart';

import '../../../generated/location_localizations.dart';
import '../../domain/errors/location_failure.dart';

extension LocationFailureX on LocationFailure {
  String localize(BuildContext context) {
    final l10n = LocationLocalizations.of(context)!;
    return switch (this) {
      LocationFailure.locationNotFound => l10n.failureLocationNotFound,
      LocationFailure.cityNotFound => l10n.failureCityNotFound,
    };
  }
}
