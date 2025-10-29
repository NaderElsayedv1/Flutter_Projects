import 'package:flutter/material.dart';
import 'package:tasks_app/models/notes_model.dart';

class TextSection extends StatefulWidget {
  final NotesModel notesModel;
  final VoidCallback onUpdate; 

  const TextSection({super.key, required this.notesModel, required this.onUpdate});

  @override
  State<TextSection> createState() => _TextSectionState();
}

class _TextSectionState extends State<TextSection> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: const Color.fromARGB(255, 233, 233, 233),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.text,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                hintText: 'Add a new task',

                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 146, 146, 146),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 237, 233, 247),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              if (controller.text.isNotEmpty) {
                widget.notesModel.addTask(controller.text);
                controller.clear();
                      widget.onUpdate(); 

                setState(() {});
              }
            },
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 197, 197, 197),
              radius: 25,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
