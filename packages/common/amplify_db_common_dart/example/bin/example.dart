// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'database.dart';

enum InputMode { query, insert }

final db = MyDatabase();

Future<void> main() async {
  InputMode? inputMode;

  while (inputMode == null) {
    final rawInput = _prompt('Would you like to query (q), or insert (i): ');
    final input = rawInput[0].toLowerCase();
    if (input == 'q') {
      inputMode = InputMode.query;
    } else if (input == 'i') {
      inputMode = InputMode.insert;
    }
  }

  switch (inputMode) {
    case InputMode.query:
      await _query();
    case InputMode.insert:
      await _insert();
  }
}

Future<void> _query() async {
  final items = await db.select(db.todos).get();
  stdout.writeln('Current todos:');
  for (final item in items) {
    stdout.writeln(item.toString());
  }
}

Future<void> _insert() async {
  final title = _prompt('Enter the title of the todo: ');
  final content = _prompt('Enter the content of the todo: ');
  await db
      .into(db.todos)
      .insert(TodosCompanion.insert(title: title, content: content));
  stdout.writeln('Inserted new todo into the DB!');
}

String _prompt(String prompt) {
  String? value;
  while (value == null) {
    stdout.write(prompt);
    value = stdin.readLineSync(encoding: utf8);
  }
  return value;
}
