import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/task_localizations.dart';
import '../../../domain/params/task_create_param.dart';
import '../../shared/widgets/task_description_field.dart';
import '../../shared/widgets/task_title_field.dart';

class TaskCreateForm extends StatefulWidget {
  final void Function(
    BuildContext context,
    TaskCreateParam? param,
    String? invalidMessage,
  )
  onListen;
  const TaskCreateForm({super.key, required this.onListen});

  @override
  State<TaskCreateForm> createState() => _TaskCreateFormState();
}

class _TaskCreateFormState extends State<TaskCreateForm> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;

  void _onInputChanged() {
    final l10n = TaskLocalizations.of(context)!;

    final title = _titleController.text;
    if (title.isEmpty) {
      widget.onListen(context, null, l10n.taskFieldTitleInvalidEmpty);
      return;
    }

    final description = _descriptionController.text;
    if (description.isEmpty) {
      widget.onListen(context, null, l10n.taskFieldDescriptionInvalidEmpty);
      return;
    }

    final param = TaskCreateParam(title: title, description: description);
    widget.onListen(context, param, null);
  }

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController()..addListener(_onInputChanged);
    _descriptionController = TextEditingController()
      ..addListener(_onInputChanged);
  }

  @override
  void dispose() {
    _titleController
      ..removeListener(_onInputChanged)
      ..dispose();
    _descriptionController
      ..removeListener(_onInputChanged)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.screen),
      children: [
        TaskTitleField(controller: _titleController),
        AppGap.lg,
        TaskDescriptionField(controller: _descriptionController),
      ],
    );
  }
}
