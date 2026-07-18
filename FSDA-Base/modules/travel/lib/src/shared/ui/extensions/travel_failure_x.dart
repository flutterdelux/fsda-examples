import 'package:flutter/material.dart';

import '../../../generated/travel_localizations.dart';
import '../../domain/errors/travel_failure.dart';

extension TravelFailureX on TravelFailure {
  String localize(BuildContext context) {
    final l10n = TravelLocalizations.of(context)!;
    return switch (this) {
      TravelFailure.travelNotFound => l10n.failureTravelNotFound,
      TravelFailure.destinationNotFound => l10n.failureDestinationNotFound,
    };
  }
}
