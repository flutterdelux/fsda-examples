// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'task_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class TaskLocalizationsId extends TaskLocalizations {
  TaskLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get taskAlt => 'Task';

  @override
  String get failureTaskNotFound => 'Task tidak ditemukan';

  @override
  String get failureTaskFormInvalid =>
      'Please fill in all required fields correctly';

  @override
  String get taskCreateTitle => 'Create Task';

  @override
  String get taskCreateAction => 'Create';

  @override
  String get taskCreateSuccess => 'Task created successfully';

  @override
  String get taskFieldTitleLabel => 'Title';

  @override
  String get taskFieldTitleHint => 'Enter title...';

  @override
  String get taskFieldTitleInvalidEmpty => 'Title cannot be empty';

  @override
  String get taskFieldDescriptionLabel => 'Description';

  @override
  String get taskFieldDescriptionHint => 'Enter description...';

  @override
  String get taskFieldDescriptionInvalidEmpty => 'Description cannot be empty';
}
