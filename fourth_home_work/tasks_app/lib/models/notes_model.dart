class NotesModel {
    List<String> tasks = [];
  List<bool> isCompleted = [];

  

 
void addTask(String task) {
    if (task.isNotEmpty) {
      tasks.add(task);
      isCompleted.add(false); // في البداية غير مكتمل
    }
  }

  void removeTask(int index) {
    if (index >= 0 && index < tasks.length) {
      tasks.removeAt(index);
      isCompleted.removeAt(index);
    }
  }
    bool get isEmpty => tasks.isEmpty;
    
void toggleTask(int index) {
    if (index >= 0 && index < isCompleted.length) {
      isCompleted[index] = !isCompleted[index];
    }
  }
}


