import 'package:flutter/material.dart';
import '../../../../../generated/note_localizations.dart';

class NoteListView extends StatelessWidget {
  final Widget content;
  const NoteListView({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    final l10n = NoteLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.noteListTitle)),
      body: content,
    );
  }
}
