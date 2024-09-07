 import 'package:flutter_local_notifications/flutter_local_notifications.dart';



// void showNotification() async {
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
//     androidAllowWhileIdle: true,
//     uiLocalNotificationDateInterpretation:
//         UILocalNotificationDateInterpretation.absoluteTime,
//   );
// }
