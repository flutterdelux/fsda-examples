import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inbox/inbox.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class InboxListPage extends StatelessWidget with PageProviderMixin {
  const InboxListPage({super.key});

  void _inboxMarkAllReadListener(
    BuildContext context,
    InboxMarkAllReadState state,
  ) {
    final l10n = InboxLocalizations.of(context)!;
    state.maybeWhen(
      orElse: () => null,
      success: () {
        context.showSuccessSnackbar(l10n.inboxMarkAllReadSuccess);
      },
      failure: (failure) {
        context.showErrorSnackbar(failure.localizeAny(context));
      },
    );
  }

  void _markAllInboxRead(BuildContext context) {
    context.read<InboxMarkAllReadCubit>().markAllInboxRead();
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [BlocProvider<InboxMarkAllReadCubit>(create: (_) => sl())],
      listeners: [
        BlocListener<InboxMarkAllReadCubit, InboxMarkAllReadState>(
          listener: _inboxMarkAllReadListener,
        ),
      ],
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('InboxListPage'),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  // compose-pmi actions go here
                  InboxMarkAllReadPopupMenuItem(
                    onTap: () {
                      _markAllInboxRead(context);
                    },
                  ),
                ],
              ),
            ],
          ),
          body: const SizedBox.shrink(),
        );
      },
    );
  }
}
