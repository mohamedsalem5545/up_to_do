import 'package:hive/hive.dart';

import 'package:uptodo/core/time_of_day_adapter.dart';

part 'task_model.g.dart'; // Generated file

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  String description;

  @HiveField(2)
  int color;

  @HiveField(3)
  HiveTimeOfDayy startTime;

  @HiveField(4)
  HiveTimeOfDayy endTime;
  @HiveField(5)
  DateTime dateTime ;

  TaskModel({
    required this.title,
    required this.description,
    required this.color,
    required this.startTime,
    required this.endTime,
    required this.dateTime 
  });
}
