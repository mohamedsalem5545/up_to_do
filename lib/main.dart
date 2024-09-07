import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:uptodo/core/const.dart';
import 'package:uptodo/core/service/local_notification_service.dart';
import 'package:uptodo/core/service/work_manager_service.dart';
import 'package:uptodo/core/task_model.dart';
import 'package:uptodo/core/time_of_day_adapter.dart';
import 'package:uptodo/features/add_task/data/task_cabit/task_list_cubit.dart';
import 'package:uptodo/features/splesh/presentation/splesh_view.dart';

void main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   const AndroidInitializationSettings initializationSettingsAndroid =
//       AndroidInitializationSettings('@mipmap/ic_launcher');

//   const InitializationSettings initializationSettings = InitializationSettings(
//     android: initializationSettingsAndroid,
//   );

//   //await flutterLocalNotificationsPlugin.initialize(initializationSettings,onSelectNotification:onSelectNotification);
// await flutterLocalNotificationsPlugin.initialize(
//  //onSelectNotification:onSelectNotification,
//     initializationSettings,
//    // onSelectNotification: onSelectNotification,
//   );
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(TimeOfDayAdapterrrr());
  Hive.registerAdapter(TaskModelAdapter());
  //await Hive.deleteBoxFromDisk(boxName);
//var boxHivee = await Hive.openBox<TaskModel>(boxName);
  //await Hive.openBox<TaskModel>(boxName);

  //await Hive.box(boxName).compact();
  await Hive.openBox<HiveTimeOfDayy>(timeName);
  //  Hive.registerAdapter(TimeOfDayAdapter());

  //  await box.clear();

 await Future.wait([
    LocalNotificationService.init(),
    WorkManagerService().init(),
  ]);

//   void showNotification() async {
//   const AndroidNotificationDetails androidPlatformChannelSpecifics =
//       AndroidNotificationDetails(
//     'your_channel_id',
//     'your_channel_name',
//     channelDescription: 'your_channel_description',
//     importance: Importance.max,
//     priority: Priority.high,
//     showWhen: false,
//   );

//   const NotificationDetails platformChannelSpecifics =
//       NotificationDetails(android: androidPlatformChannelSpecifics);

//   await flutterLocalNotificationsPlugin.show(
//     0, // Notification ID
//     'Hello', // Notification Title
//     'This is a test notification.', // Notification Body
//     platformChannelSpecifics,
//     payload: 'item x', // Optional payload
//   );
// }

// void scheduleNotification() async {
//   final tz.TZDateTime scheduledDate =
//       tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5));

//   await flutterLocalNotificationsPlugin.zonedSchedule(
//     0,
//     'Scheduled Notification',
//     'This notification was scheduled to show after 5 seconds.',
//     scheduledDate,
//     const NotificationDetails(
//       android: AndroidNotificationDetails('your channel id', 'your channel name',
//           channelDescription: 'your channel description'),
//     ),
//     //androidScheduleMode: true,
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation:
//         UILocalNotificationDateInterpretation.absoluteTime,
//   );
// }

  runApp(const MyApp());
}

// Future<void> onSelectNotification(String? payload) async {
//   // Handle notification tap
//   if (payload != null) {
//     print('Notification payload: $payload');
//     // Navigate to a specific screen or perform some action
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 890),
      child: BlocProvider(
        create: (context) => GetTaskCubit(),
        child: MaterialApp(
          //  darkTheme: ThemeData(
          //   brightness: Brightness.dark,
          //   scaffoldBackgroundColor: Colors.black,
          //   /* dark theme settings */
          // ),
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          debugShowCheckedModeBanner: false,
          //  darkTheme: ThemeData.dark(),
          home: const SplashView(),
        ),
      ),
    );
  }
}
