import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:uptodo/features/add_task/data/task_cabit/task_list_cubit.dart';

import 'package:uptodo/features/add_task/presentation/widgets/bottom_sheet_oreder.dart';

// ignore: must_be_immutable
class Tasks extends StatefulWidget {
  Tasks(
      {required this.title,
      required this.startTime,
      required this.endTime,
      required this.des,
      required this.color,
      this.curretindex,
      this.isComplete = true,
      required this.date,

      super.key});
  final String title;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String des;
  final int color;
  final int? curretindex;
  bool isComplete;
 final  DateTime date;

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: () {
            showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 260.h,
                    color: const Color(0xff424242),
                    child: Column(
                      children: [
                         SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              widget.isComplete = !widget.isComplete;
                            });
                          },
                          child: ButtomSheetOrder(
                              color: 0xff8875FF, taskOrder: 'TASK COMPLETED'),
                        ),
                        InkWell(
                          onTap: () {
                            BlocProvider.of<GetTaskCubit>(context)
                                .delet(widget.curretindex ?? 0);
                          },
                          child: ButtomSheetOrder(
                              color: 0xffE57373, taskOrder: 'DELETE TASK'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: ButtomSheetOrder(
                              color: 0xff8875FF, taskOrder: 'CANCEL'),
                        ),
                      ],
                    ),
                  );
                });
          },
          child: Container(
            decoration: BoxDecoration(
              color: Color(widget.color),
              borderRadius: BorderRadius.circular(16),
            ),
            height: 160.h,
            width: double.infinity,
            child: Row(
              children: [
                 SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 160.w,
                      child: Text(
                        widget.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        //  'Task 1',
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22.sp,
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.access_time),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          widget.startTime.format(context),
                          style:  TextStyle(fontSize: 18.sp),
                        ),
                        // const SizedBox(
                        //   width: 5,
                        // ),
                        Text(
                          widget.endTime.format(context),
                          style:  TextStyle(fontSize: 18.sp),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 6.h,
                    ),
                    Text(
                      widget.des,
                      style:  TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(
                      width:130.w ,
                      child: Text(
                         maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        widget.date.toString(),
                        style:  TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontSize: 20.sp,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: MediaQuery.of(context).size.width * .3),
                Container(
                  height: 80.h,
                  width: 2.w,
                  color: Colors.white,
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                RotatedBox(
                  quarterTurns:
                      3, // Rotates the text 270 degrees (vertical layout)
                  child: Text(
                    widget.isComplete ? 'TODO' : 'Comp',
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
