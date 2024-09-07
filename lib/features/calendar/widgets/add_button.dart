import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/features/add_task/presentation/add_task.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: CircleAvatar(
        radius: 32.r,
        //backgroundColor: Colors.red,
        backgroundColor: const Color(0xff8687E7),
        child: IconButton(
          onPressed: () {
            // print('width =${MediaQuery.of(context).size.width}');
            // print('height = ${MediaQuery.of(context).size.height}');
    
    
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddTaskScreen()),
            );
          },
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}

