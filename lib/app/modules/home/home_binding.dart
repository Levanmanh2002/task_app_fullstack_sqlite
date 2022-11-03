import 'package:get/get.dart';
import 'package:task_app/app/data/providers/task/task_provider.dart';
import 'package:task_app/app/data/services/storage/task_repository.dart';
import 'package:task_app/app/modules/home/home_controller.dart';

class HomeBinding implements Bindings {
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
