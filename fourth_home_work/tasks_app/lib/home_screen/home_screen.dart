import 'package:flutter/material.dart';
import 'package:tasks_app/home_screen/custom_card.dart';
import 'package:tasks_app/home_screen/text_section.dart';
import 'package:tasks_app/models/notes_model.dart';

class HomeScreen extends StatefulWidget {
  final NotesModel notesModel;

  const HomeScreen({super.key, required this.notesModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final notesModel = widget.notesModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9EF3E3),
        title: Text(
          'My Tasks',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: notesModel.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_circle_outline_rounded,
                          color: Color(0xffABCCCA),
                          size: 100,
                        ),
                        Text(
                          'No tasks yet',
                          style: TextStyle(
                            color: Color(0xffB5BBBB),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Add a task to get started',
                          style: TextStyle(
                            color: Color(0xffB5BBBB),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    itemCount: notesModel.tasks.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        notesModel: notesModel,
                        index: index,
                        onUpdate: () {
                          setState(() {});
                        },
                      );
                    },
                  ),
          ),
          TextSection(
            notesModel: notesModel,
            onUpdate: () {
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
