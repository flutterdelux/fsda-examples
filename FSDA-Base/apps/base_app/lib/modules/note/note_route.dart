import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/pages/not_found_page.dart';
import 'features/note/pages/note_list_page.dart';

abstract final class NoteRoute {
  static const _note = 'note';
  static const _noteList = 'note-list';

  static RouteBase get base => GoRoute(
    path: '/note',
    name: _note,
    builder: (context, state) => const NotFoundPage(),
    routes: [
      GoRoute(
        path: 'note_list',
        name: _noteList,
        builder: (context, state) => const NoteListPage(),
      ),
    ],
  );

  static Future<dynamic> toNote(BuildContext context) {
    return context.pushNamed(_note);
  }

  static Future<dynamic> toNoteList(BuildContext context) {
    return context.pushNamed(_noteList);
  }
}
