import 'package:get/get.dart';
import 'package:task_app/app/data/controller/controller.dart';
import 'package:task_app/app/data/providers/task/task_provider.dart';
import 'package:task_app/app/data/services/storage/task_repository.dart';

class BindingController implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => HomeController(
        taskRepository: TaskRepository(
          taskProvider: TaskProvider(),
        ),
      ),
    );
  }
}
