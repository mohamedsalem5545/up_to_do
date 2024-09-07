import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uptodo/features/add_task/data/task_cabit/task_list_cubit.dart';
import 'package:uptodo/features/add_task/data/task_cabit/task_list_state.dart';
import 'package:uptodo/features/add_task/presentation/widgets/tasks.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: BlocBuilder<GetTaskCubit, GetTakStates>(
        builder: (context, state) {
      // var items =   getTasksForSelectedDate(
      //     GetTaskCubit.get(context).taskList, selectedDate);
      var items = GetTaskCubit.get(context).taskList;
    
      if (state is GetTaskSucessState) {
        return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 160.h,
                //  width: 130,
    
                child: Tasks(
                  curretindex: items.length-1- index,
                  title: items[items.length-1- index].title,
                  startTime: items[items.length-1- index].startTime.toTimeOfDay(),
                  endTime: items[items.length-1- index].endTime.toTimeOfDay(),
                  des: items[items.length-1- index].description,
                  color: items[items.length-1- index].color,
                  date: items[items.length-1- index].dateTime,
                ),
              ),
            );
          },
        );
      } else if (state is GetTaskFiledState) {
        return Center(
          child: Text(
            'Error: ${state.errorMessage}',
            style: const TextStyle(color: Colors.red),
          ),
        );
      } else {
        return Center(
          child: SvgPicture.asset(
            'assets/images/image4.svg',
            height: 350.h,
            width: 260.w,
          ),
        );
      }
    }));
  }
}
