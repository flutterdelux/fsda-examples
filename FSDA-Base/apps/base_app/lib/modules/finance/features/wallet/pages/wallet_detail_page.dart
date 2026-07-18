import 'package:app_ui/app_ui.dart';
import 'package:finance/finance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class WalletDetailPage extends StatelessWidget with PageProviderMixin {
  final int id;
  const WalletDetailPage({super.key, required this.id});

  void _walletDeleteCubitListener(
    BuildContext context,
    WalletDeleteState state,
  ) {
    final l10n = FinanceLocalizations.of(context)!;
    state.maybeWhen(
      orElse: () => null,
      success: () {
        context.showSuccessSnackbar(l10n.walletDeleteSuccess);
      },
      failure: (failure) {
        context.showErrorSnackbar(failure.localizeAny(context));
      },
    );
  }

  void _executeWalletDeleteCubit(BuildContext context) {
    context.read<WalletDeleteCubit>().deleteWallet(WalletDeleteParam(id: id));
  }

  Future<void> _showWalletDeleteDialog(BuildContext context) {
    return WalletDeleteDialog(
      onConfirm: () {
        Navigator.pop(context);
        _executeWalletDeleteCubit(context);
      },
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [BlocProvider<WalletDeleteCubit>(create: (_) => sl())],
      listeners: [
        BlocListener<WalletDeleteCubit, WalletDeleteState>(
          listener: _walletDeleteCubitListener,
        ),
      ],
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('WalletDetailPage'),
            actions: [
              PopupMenuButton(
                itemBuilder: (context) => [
                  // compose-pmi actions go here
                  WalletDeletePopupMenuItem(
                    onTap: () {
                      _showWalletDeleteDialog(context);
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
