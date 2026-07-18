import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/task_localizations.dart';

class TaskTitleField extends StatelessWidget {
  final TextEditingController controller;
  const TaskTitleField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;
    return AppSection(
      header: AppSectionHeader(titleText: l10n.taskFieldTitleLabel),
      content: AppTextField(
        controller: controller,
        hintText: l10n.taskFieldTitleHint,
      ),
    );
  }
}
