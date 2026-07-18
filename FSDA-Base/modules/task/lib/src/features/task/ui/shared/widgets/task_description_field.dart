import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/task_localizations.dart';

class TaskDescriptionField extends StatelessWidget {
  final TextEditingController controller;
  const TaskDescriptionField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;
    return AppSection(
      header: AppSectionHeader(titleText: l10n.taskFieldDescriptionLabel),
      content: AppTextField(
        controller: controller,
        hintText: l10n.taskFieldDescriptionHint,
        minLines: 5,
        maxLines: 5,
        textInputAction: TextInputAction.newline,
      ),
    );
  }
}
