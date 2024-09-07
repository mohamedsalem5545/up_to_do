import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/features/add_task/presentation/add_task.dart';



class TimeTextField extends StatefulWidget {
  const TimeTextField({
    // required  this.startTime,
    // required  this.endTime,

    super.key});

//  final   TimeOfDay startTime ;
//   final TimeOfDay endTime;

  @override
  State<TimeTextField> createState() => _TimeTextFieldState();
}

class _TimeTextFieldState extends State<TimeTextField> {


 

  //  late TimeOfDay startTime ;
  //   late TimeOfDay endTime ;

  //    @override
  // void initState() {
  //   super.initState();
  //   startTime = widget.startTime;
  //   endTime = widget.endTime;
  // }
 
  Future<void> _selectTime(BuildContext context, bool isStartTime) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: isStartTime ? startTime : endTime,
    );
    if (pickedTime != null) {
      setState(() {
        if (isStartTime) {
          startTime = pickedTime;
        } else {
          endTime = pickedTime;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Start Time'),
               SizedBox(
                height: 10.h,
              ),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  //  labelText: 'Start Time',
                  hintText: startTime.format(context),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.access_time),
                    onPressed: () => _selectTime(context, true),
                  ),
                ),
              ),
            ],
          ),
        ),
         SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('End Time'),
               SizedBox(
                height: 10.h,
              ),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // labelText: 'End Time',
                  hintText: endTime.format(context),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.access_time),
                    onPressed: () => _selectTime(context, false),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
