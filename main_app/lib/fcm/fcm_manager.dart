// import 'dart:convert';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class FirebaseApi {
//   final _firebaseMessaging = FirebaseMessaging.instance;

//   final _androidChanel = const AndroidNotificationChannel(
//     'high_importance_channel',
//     'High Importance Notifications',
//     description: 'This channel is used for important notifiication',
//     importance: Importance.defaultImportance,
//   );

//   final _localNotifications = FlutterLocalNotificationsPlugin();

//   // @pragma('vm:entry-point')
//   Future<void> handleBackgroundMessage(RemoteMessage? message) async {
//     if (message != null) return;
//   }

//   Future initLocalNotifications() async {
//     const iOS = DarwinInitializationSettings();
//     const android = AndroidInitializationSettings('ic_launcher');
//     const setting = InitializationSettings(android: android, iOS: iOS);

//     await _localNotifications.initialize(
//       setting,
//       onDidReceiveNotificationResponse: (details) {
//         final message = RemoteMessage.fromMap(jsonDecode(details as String));
//         handleBackgroundMessage(message);
//       },
//     );

//     final platform = _localNotifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

//     await platform?.createNotificationChannel(_androidChanel);
//   }

//   Future<void> initPushNotification() async {
//     await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     FirebaseMessaging.instance.getInitialMessage().then(handleBackgroundMessage);
//     FirebaseMessaging.onMessageOpenedApp.listen(handleBackgroundMessage);
//     FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
//     FirebaseMessaging.onMessage.listen((message) {
//       final notification = message.notification;
//       if (notification == null) return;
//       _localNotifications.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             _androidChanel.id,
//             _androidChanel.name,
//             channelDescription: _androidChanel.description,
//             icon: '@drawwable/ic_launcher',
//           ),
//         ),
//         payload: jsonEncode(message.toMap()),
//       );
//     });
//   }

//   Future<void> initNotification() async {
//     await _firebaseMessaging.requestPermission();
//     final fcmToken = await _firebaseMessaging.getToken();
//     print("Token: $fcmToken");
//     initPushNotification();
//     initLocalNotifications();
//   }
// }
