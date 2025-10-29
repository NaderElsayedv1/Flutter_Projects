import 'package:tasks_app/models/notes_model.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final NotesModel notesModel;
  final int index;
  final VoidCallback onUpdate;

  const CustomCard({
    super.key,
    required this.notesModel,
    required this.index,
    required this.onUpdate,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    return Padding(
      padding: const EdgeInsets.all(14),
      child: Card(
        shadowColor: Colors.grey,
        child: ListTile(
          leading: Checkbox(
            value: widget.notesModel.isCompleted[widget.index],
            activeColor: Color(0xff00695E),
            onChanged: (value) {
              widget.notesModel.toggleTask(widget.index);
              widget.onUpdate();
            },
          ),
          title: Text(
            widget.notesModel.tasks[widget.index],
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              decoration: widget.notesModel.isCompleted[widget.index]
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            'Created : ${now.year} - ${now.month} - ${now.day}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
            ),
          ),
          trailing: GestureDetector(
            onTap: () {
              widget.notesModel.removeTask(widget.index);
              widget.onUpdate();
            },
            child: Icon(
              Icons.delete_outline_outlined,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
