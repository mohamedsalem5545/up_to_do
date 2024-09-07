
//     import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:uptodo/features/add_task/data/task_cabit/task_list_cubit.dart';
// import 'package:uptodo/features/add_task/data/task_cabit/task_list_state.dart';
// import 'package:uptodo/features/add_task/presentation/add_task.dart';
// import 'package:uptodo/features/add_task/presentation/widgets/tasks.dart';




//   class ListOfTask extends StatefulWidget {
//   const ListOfTask({
//     super.key,
//   });

//   @override
//   State<ListOfTask> createState() => _ListOfTaskState();
// }

// class _ListOfTaskState extends State<ListOfTask> {

// @override
//   void initState() {
//     super.initState();
//     BlocProvider.of<GetTaskCubit>(context)
//         .addTaskToList(
//           titleController.text,
//           noteController.text,
//           selectedColor,
//           startTime,
//           endTime
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: [
//         BlocBuilder<GetTaskCubit, GetTakStates>(
//           builder: (context, state) {
//             if (state is GetTaskSucessState) {
//               return SliverList(
//                 delegate: SliverChildBuilderDelegate(
//                   (context, index) {
//                     return Tasks(
//                       title: state.shoppingCardList[index].title,
//                       startTime: state
//                           .shoppingCardList[index].startTime
//                           ,
//                       endTime: state.shoppingCardList[index].endTime
//                           ,
//                       des: state.shoppingCardList[index].descrip,
//                       color: state.shoppingCardList[index].color,
//                     );
//                   },
//                   childCount: state.shoppingCardList.length,
//                 ),
//               );
//             } else if (state is GetTaskloadingState) {
//               return const SliverToBoxAdapter(
//                 child: Center(
//                   child: CircularProgressIndicator(), // More appropriate for loading state
//                 ),
//               );
//             } else if (state is GetTaskFiledState) {
//               return SliverToBoxAdapter(
//                 child: Center(
//                   child: Text(
//                     'Error: ${state.errorMessage}',
//                     style: const TextStyle(color: Colors.red),
//                   ),
//                 ),
//               );
//             } else  {
//               return SliverToBoxAdapter(
//                 child: Center(
//                   child: SvgPicture.asset(
//                     'assets/images/image4.svg',
//                     height: 350,
//                     width: 260,
//                   ),
//                 ),
//               );
             
//             }
//           }
//         )
//       ],
//     );
//   }
// }
