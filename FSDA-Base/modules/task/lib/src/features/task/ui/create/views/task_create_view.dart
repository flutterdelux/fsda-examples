
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../../../generated/task_localizations.dart';

class TaskCreateView extends StatelessWidget {
  /// Use `TaskCreateForm`
  final Widget form;

  /// Use `TaskCreateButton`
  final Widget submitButton;

  const TaskCreateView({
    super.key,
    required this.form,
    required this.submitButton,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.taskCreateTitle)),
      body: form,
      bottomNavigationBar: AppBottomContainer(child: submitButton),
    );
  }
}
