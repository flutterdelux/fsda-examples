import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../modules/attendance/attendance_route.dart';
import '../../../modules/finance/finance_route.dart';
import '../../../modules/inbox/inbox_route.dart';
import '../../../modules/location/location_route.dart';
import '../../../modules/note/note_route.dart';
import '../../../modules/product/product_route.dart';
import '../../../modules/queue/queue_route.dart';
import '../../../modules/subscription/subscription_route.dart';
import '../../../modules/task/task_route.dart';
import '../../../modules/travel/travel_route.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: UnconstrainedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              AppAssets.logo,
              width: 32,
              height: 32,
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: const Text('Base App'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSpacing.screen),
        children: [
          AppSection(
            header: const AppSectionHeader(titleText: "Mutation"),
            content: AppCard(
              children: [
                AppListTile(
                  leading: AppLeadingId(id: 'M', radius: 8),
                  title: 'Mutation',
                  subtitle: 'Mark all inbox read',
                  includeChevron: true,
                  onTap: () {
                    InboxRoute.toInboxList(context);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Mp', radius: 8),
                  title: 'Mutation + Param',
                  subtitle: 'Delete wallet',
                  includeChevron: true,
                  onTap: () {
                    FinanceRoute.toWalletDetail(context, id: 1);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Mr', radius: 8),
                  title: 'Mutation + Return',
                  subtitle: 'Take queue',
                  includeChevron: true,
                  onTap: () {
                    QueueRoute.toQueueTake(context);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Mrp', radius: 8),
                  title: 'Mutation + Return + Param',
                  subtitle: 'Create task',
                  includeChevron: true,
                  onTap: () {
                    TaskRoute.toTaskCreate(context);
                  },
                ),
              ],
            ),
          ),
          AppGap.lg,
          AppSection(
            header: const AppSectionHeader(titleText: "Retrieval"),
            content: AppCard(
              children: [
                AppListTile(
                  leading: AppLeadingId(id: 'R', radius: 8),
                  title: 'Retrieval',
                  subtitle: 'Get popular destinations',
                  includeChevron: true,
                  onTap: () {
                    TravelRoute.toDestination(context);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Rp', radius: 8),
                  title: 'Retrieval + Param',
                  subtitle: 'Get product',
                  includeChevron: true,
                  onTap: () {
                    ProductRoute.toProductDetail(context, id: 1);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Rpag', radius: 8),
                  title: 'Retrieval + Pagination',
                  subtitle: 'Get cities',
                  includeChevron: true,
                  onTap: () {
                    LocationRoute.toCityList(context);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Rs', radius: 8),
                  title: 'Retrieval + Stream',
                  subtitle: 'Watch attendances',
                  includeChevron: true,
                  onTap: () {
                    AttendanceRoute.toAttendanceList(context);
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Rsp', radius: 8),
                  title: 'Retrieval + Stream + Param',
                  subtitle: 'Watch payment status',
                  includeChevron: true,
                  onTap: () {
                    SubscriptionRoute.toPaymentStatus(
                      context,
                      id: 'pay_T4TSV5DM',
                    );
                  },
                ),
                AppListTile(
                  leading: AppLeadingId(id: 'Rloc', radius: 8),
                  title: 'Retrieval + Offline First',
                  subtitle: 'Get notes',
                  includeChevron: true,
                  onTap: () {
                    NoteRoute.toNoteList(context);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
