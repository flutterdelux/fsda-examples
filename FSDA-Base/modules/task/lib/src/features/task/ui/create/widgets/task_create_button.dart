
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/task_localizations.dart';

class TaskCreateButton extends StatelessWidget {
  final bool isLoading;
  final VoidCallback? onPressed;
  const TaskCreateButton({super.key, required this.isLoading, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;
    return AppSubmitFilledButton(
      text: l10n.taskCreateAction,
      isLoading: isLoading,
      onPressed: isLoading ? null : onPressed,
    );
  }
}
