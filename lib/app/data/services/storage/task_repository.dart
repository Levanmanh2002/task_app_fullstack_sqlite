import 'package:task_app/app/data/models/task.dart';
import 'package:task_app/app/data/providers/task/task_provider.dart';

class TaskRepository {
  TaskProvider taskProvider;
  TaskRepository({
    required this.taskProvider,
  });

  List<Task> readTasks() => taskProvider.readTask();
  void witeTasks(List<Task> tasks) => taskProvider.writeTasks(tasks);
}
