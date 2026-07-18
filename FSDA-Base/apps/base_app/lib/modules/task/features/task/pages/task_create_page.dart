import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/task.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class TaskCreatePage extends StatelessWidget with PageProviderMixin {
  const TaskCreatePage({super.key});

  void _createTask(BuildContext context) {
    final l10n = TaskLocalizations.of(context)!;

    final formState = context.read<TaskCreateFormCubit>().state;
    if (formState.invalidMessage != null) {
      context.showErrorSnackbar(formState.invalidMessage!);
      return;
    }

    final TaskCreateParam? formStateParam = formState.param;
    if (formStateParam == null) {
      context.showErrorSnackbar(l10n.failureTaskFormInvalid);
      return;
    }

    context.read<TaskCreateCubit>().createTask(formStateParam);
  }

  void _taskCreateListener(BuildContext context, TaskCreateState state) {
    final l10n = TaskLocalizations.of(context)!;
    state.maybeWhen(
      orElse: () => null,
      failure: (failure) =>
          context.showErrorSnackbar(failure.localizeAny(context)),
      success: (_) {
        context.showSuccessSnackbar(l10n.taskCreateSuccess);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<TaskCreateCubit>(create: (_) => sl()),
        BlocProvider<TaskCreateFormCubit>(create: (_) => sl()),
      ],
      listeners: [
        BlocListener<TaskCreateCubit, TaskCreateState>(
          listener: _taskCreateListener,
        ),
      ],
      builder: (context) {
        return Stack(
          children: [
            TaskCreateView(
              form: TaskCreateForm(
                onListen: (context, param, invalidMessage) {
                  context.read<TaskCreateFormCubit>().update(
                    param,
                    invalidMessage,
                  );
                },
              ),
              submitButton: BlocBuilder<TaskCreateCubit, TaskCreateState>(
                builder: (_, state) {
                  final isLoading = state.maybeWhen(
                    orElse: () => false,
                    loading: () => true,
                  );
                  return TaskCreateButton(
                    isLoading: isLoading,
                    onPressed: () => _createTask(context),
                  );
                },
              ),
            ),
            BlocBuilder<TaskCreateCubit, TaskCreateState>(
              builder: (_, state) => state.maybeWhen(
                orElse: () => const SizedBox.shrink(),
                loading: () => const AppLoadingOverlay(),
              ),
            ),
          ],
        );
      },
    );
  }
}
