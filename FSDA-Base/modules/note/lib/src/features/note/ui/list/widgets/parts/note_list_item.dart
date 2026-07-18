import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/note_entity.dart';

class NoteListItem extends StatelessWidget {
  final int index;
  final NoteEntity note;
  final void Function() onTap;
  const NoteListItem({
    super.key,
    required this.index,
    required this.note,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppListTile(
      leading: AppLeadingIndex(number: index + 1),
      title: note.title,
      subtitle: note.content,
      includeChevron: true,
      onTap: onTap,
    );
  }
}
