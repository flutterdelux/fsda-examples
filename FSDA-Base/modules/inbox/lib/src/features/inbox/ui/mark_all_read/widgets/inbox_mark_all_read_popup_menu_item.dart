import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/inbox_localizations.dart';

class InboxMarkAllReadPopupMenuItem extends PopupMenuItem {
  static const valueKey = 'inbox_mark_all_read';

  const InboxMarkAllReadPopupMenuItem({super.key, super.onTap})
    : super(value: valueKey, child: const _Child());
}

class _Child extends StatelessWidget {
  const _Child();

  @override
  Widget build(BuildContext context) {
    final l10n = InboxLocalizations.of(context)!;
    return Row(
      children: [
        const Icon(Icons.checklist_rounded, size: 20),
        AppGap.sm,
        Text(l10n.inboxMarkAllReadPopupMenuItem),
      ],
    );
  }
}
