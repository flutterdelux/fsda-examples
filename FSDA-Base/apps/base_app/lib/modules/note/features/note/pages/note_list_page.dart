import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/note.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/extensions/failure_x.dart';
import '../../../../../core/mixins/page_provider_mixin.dart';

class NoteListPage extends StatelessWidget with PageProviderMixin {
  const NoteListPage({super.key});

  void _getNoteList(BuildContext context) {
    context.read<NoteListCubit>().getNoteList();
  }

  void _onItemTap(BuildContext context, NoteEntity item) {
    context.showSuccessSnackbar('Tapped on: ${item.title}');
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<NoteListCubit, NoteListState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => const NoteListSkeleton(),
        loading: () => const NoteListSkeleton(),
        failure: (failure) => NoteListErrorFeedback(
          message: failure.localizeAny(context),
          onRetry: () => _getNoteList(context),
        ),
        loaded: (data) => data.isEmpty
            ? NoteListEmptyFeedback(onRefresh: () => _getNoteList(context))
            : NoteListContent(
                list: data,
                onItemTap: (item) => _onItemTap(context, item),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildPage(
      providers: [
        BlocProvider<NoteListCubit>(create: (_) => sl()..getNoteList()),
      ],
      listeners: [],
      builder: (context) {
        return NoteListView(content: _buildContent(context));
      },
    );
  }
}
