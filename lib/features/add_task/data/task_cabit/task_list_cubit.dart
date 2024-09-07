import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uptodo/core/const.dart';
import 'package:uptodo/core/task_model.dart';
import 'package:uptodo/core/time_of_day_adapter.dart';
import 'package:uptodo/features/add_task/data/task_cabit/task_list_state.dart';



class GetTaskCubit extends Cubit<GetTakStates> {
  GetTaskCubit() : super(GetTaskInitialState()) {
    _initializeBox();
  }

  List<TaskModel> taskList = [];
  Box<TaskModel>? boxHivee;

  static GetTaskCubit get(context) => BlocProvider.of(context);

  Future<void> _initializeBox() async {
    // Open the box and assign it to boxHivee
    boxHivee = await Hive.openBox<TaskModel>(boxName);
    // Load initial data if needed
    taskList = boxHivee?.values.toList() ?? [];
  }

  Future<void> addTaskToList(String title, String descrip, int color,
      TimeOfDay startTime, TimeOfDay endTime , DateTime dateTime) async {
    emit(GetTaskInitialState());

    try {
      if (boxHivee == null) return;

      var stime = HiveTimeOfDayy(startTime.hour, startTime.minute);
      var etime = HiveTimeOfDayy(endTime.hour, endTime.minute);
    //  DateTime safeDateTime = dateTime ?? DateTime.now();

var newTask = TaskModel(
  title: title,
  description: descrip,
  color: color,
  startTime: stime,
  endTime: etime,
  dateTime: dateTime,
);

 
      // Add to the box
      await boxHivee!.add(newTask);

      taskList = boxHivee!.values.toList();

      emit(GetTaskSucessState());
    } on Exception catch (e) {
      emit(GetTaskFiledState(errorMessage: e.toString()));
    }
  }

  Future<void> delet(int indexx) async {
    if (boxHivee == null) return;

    try {
      // Delete an item from the box by key
      await boxHivee!.deleteAt(indexx);
      // Update the task list
      taskList = boxHivee!.values.toList();
      // Emit a success or updated state
      emit(GetTaskSucessState());
    } on Exception catch (e) {
      emit(GetTaskFiledState(errorMessage: e.toString()));
    }
  }
}

