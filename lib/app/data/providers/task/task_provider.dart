import 'dart:convert';

import 'package:get/get.dart';
import 'package:task_app/app/core/utils/key.dart';
import 'package:task_app/app/data/models/task.dart';
import 'package:task_app/app/data/services/storage/storage_service.dart';

class TaskProvider {
  final StorageService _storage = Get.find<StorageService>();

  List<Task> readTask() {
    var tasks = <Task>[];
    jsonDecode(_storage.read(taskKey).toString())
        .forEach((e) => tasks.add(Task.fromJson(e)));
    return tasks;
  }

  void writeTasks(List<Task> tasks) {
    _storage.write(taskKey, jsonEncode(tasks));
  }
}
