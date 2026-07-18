import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/note_entity.dart';
import 'parts/note_list_item.dart';

class NoteListContent extends StatelessWidget {
  final List<NoteEntity> list;
  final void Function(NoteEntity item) onItemTap;
  const NoteListContent({
    super.key,
    required this.list,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.paddingOf(context);
    return ListView.separated(
      padding: EdgeInsets.fromLTRB(0, 0, 0, AppSpacing.screen + padding.bottom),
      itemCount: list.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) {
        final note = list[index];
        return NoteListItem(
          index: index,
          note: note,
          onTap: () => onItemTap(note),
        );
      },
    );
  }
}
