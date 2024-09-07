import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/core/service/local_notification_service.dart';
import 'package:uptodo/features/add_task/data/task_cabit/task_list_cubit.dart';

import 'package:uptodo/features/add_task/presentation/widgets/app_bar_widget.dart';
import 'package:uptodo/features/add_task/presentation/widgets/choise_color.dart';
import 'package:uptodo/features/add_task/presentation/widgets/data_text_field.dart';
import 'package:uptodo/features/add_task/presentation/widgets/note_text_field.dart';
import 'package:uptodo/features/add_task/presentation/widgets/time_text_field.dart';
import 'package:uptodo/features/add_task/presentation/widgets/title_text_filed.dart';
import 'package:uptodo/features/calendar/calendar_view.dart';

TextEditingController titleController = TextEditingController();
TextEditingController noteController = TextEditingController();
DateTime selectedDate = DateTime.now();

TimeOfDay startTime = TimeOfDay.now();
TimeOfDay endTime = TimeOfDay.now();
int selectedColor = 0xff47777;

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AbbperWidget(),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              'Title',
            ),
            SizedBox(
              height: 10.h,
            ),
            TitleTextField(titleController: titleController),
            // titleController.clear(),
            //        TextField(
            //   controller: titleController,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     labelText: 'Enter title here',
            //     // hintText: 'Enter title here',
            //   ),
            // ),

            SizedBox(height: 16.h),
            const Text('Note'),
            SizedBox(
              height: 10.h,
            ),
            NoteTextField(noteController: noteController),

            //         TextField(
            //   controller: noteController,
            //   decoration: const InputDecoration(
            //     border: OutlineInputBorder(),
            //     // labelText: 'Note',
            //     labelText: 'Enter note here',
            //   ),
            // ),
            SizedBox(height: 16.h),
            const Text('Data'),
            SizedBox(
              height: 10.h,
            ),
            const DataTextField(),
            SizedBox(height: 16.h),
            const TimeTextField(),
            SizedBox(height: 32.h),
            const Text('Color'),
            SizedBox(height: 15.h),
            const ChoiseColor(),
            SizedBox(height: MediaQuery.of(context).size.height * .17),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  //  @override

                  //super.initState();
                  BlocProvider.of<GetTaskCubit>(context).addTaskToList(
                    titleController.text,
                    noteController.text,
                    selectedColor,
                    startTime,
                    endTime,
                    selectedDate,
                  );
                  titleController.clear();
                  noteController.clear();
               
                  LocalNotificationService.showSchduledNotification(
                      currentDate: selectedDate, currenTime: startTime);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalendarScreen(),
                    ),
                  );

                  // print(_startTime.toString());
                  // print(_selectedColor);

                  // Handle task creation logic here
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  backgroundColor: const Color(0xff8875FF),
                  padding:
                      EdgeInsets.symmetric(horizontal: 140.w, vertical: 20.h),
                ),
                child: Text(
                  'CREATE TASK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            //const CreateButton(),
          ],
        ),
      ),
    );
  }
}
