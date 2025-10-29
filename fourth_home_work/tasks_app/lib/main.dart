import 'package:flutter/material.dart';
import 'package:tasks_app/home_screen/home_screen.dart';
import 'package:tasks_app/models/notes_model.dart';

main() {
  runApp(TaskaApp());
}

class TaskaApp extends StatelessWidget {
   TaskaApp({super.key});
  final NotesModel notesModel = NotesModel();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(notesModel: notesModel,),
    );
  }
}