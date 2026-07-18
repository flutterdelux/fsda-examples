import 'package:app_l10n/app_l10n.dart';
import 'package:app_ui/app_ui.dart';
import 'package:attendance/attendance.dart';
import 'package:finance/finance.dart';
import 'package:flutter/material.dart';
import 'package:inbox/inbox.dart';
import 'package:location/location.dart';
import 'package:note/note.dart';
import 'package:product/product.dart';
import 'package:queue/queue.dart';
import 'package:subscription/subscription.dart';
import 'package:task/task.dart';
import 'package:travel/travel.dart';

import 'app_router.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        ...AppLocalizations.localizationsDelegates,

        /// Module L10n delegate injection
        ...InboxLocalizations.localizationsDelegates,
        ...FinanceLocalizations.localizationsDelegates,
        ...QueueLocalizations.localizationsDelegates,
        ...TaskLocalizations.localizationsDelegates,
        ...TravelLocalizations.localizationsDelegates,
        ...ProductLocalizations.localizationsDelegates,
        ...LocationLocalizations.localizationsDelegates,
        ...AttendanceLocalizations.localizationsDelegates,
        ...SubscriptionLocalizations.localizationsDelegates,
        ...NoteLocalizations.localizationsDelegates,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('id_ID'),
      routerConfig: AppRouter().router,
    );
  }
}
