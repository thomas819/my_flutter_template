// import 'dart:convert';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';
//
// @pragma('vm:entry-point')
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   await Firebase.initializeApp();
//   print('🔙 Background message: ${message.messageId}');
// }
//
// class FCMService {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//   FlutterLocalNotificationsPlugin();
//   late AndroidNotificationChannel channel;
//
//   bool isInitialized = false;
//
//   Future<void> init() async {
//     await Firebase.initializeApp();
//     await _setupFlutterNotifications();
//     _initializeFCM();
//   }
//
//   Future<void> _setupFlutterNotifications() async {
//     if (isInitialized) return;
//
//     channel = const AndroidNotificationChannel(
//       'high_importance_channel',
//       'High Importance Notifications',
//       description: 'Used for important notifications',
//       importance: Importance.high,
//     );
//
//     const androidSettings = AndroidInitializationSettings('@mipmap/launcher_icon');
//     const iosSettings = DarwinInitializationSettings();
//     const settings = InitializationSettings(
//       android: androidSettings,
//       iOS: iosSettings,
//     );
//
//     await flutterLocalNotificationsPlugin.initialize(
//       settings,
//       onDidReceiveNotificationResponse: _onSelectNotification,
//     );
//
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//
//     await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//
//     isInitialized = true;
//   }
//
//   void _initializeFCM() {
//     FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//
//     FirebaseMessaging.onMessage.listen((message) {
//       _showNotification(message);
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((message) {
//       _handleMessage(message);
//     });
//
//     FirebaseMessaging.instance.getInitialMessage().then((message) {
//       if (message != null) _handleMessage(message);
//     });
//   }
//
//   void _showNotification(RemoteMessage message) {
//     final notification = message.notification;
//     final android = message.notification?.android;
//
//     if (notification != null && android != null) {
//       flutterLocalNotificationsPlugin.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             channelDescription: channel.description,
//             icon: '@mipmap/launcher_icon',
//             priority: Priority.high,
//           ),
//           iOS: const DarwinNotificationDetails(
//             presentAlert: true,
//             presentBadge: true,
//             presentSound: true,
//           ),
//         ),
//         payload: jsonEncode(message.data),
//       );
//     }
//   }
//
//   void _onSelectNotification(NotificationResponse details) {
//     if (details.payload != null) {
//       final data = jsonDecode(details.payload!);
//       print('🔔 Foreground tapped: $data');
//       // 원하는 라우팅 처리 (예: context.go('/post/${data['postId']}) )
//     }
//   }
//
//   void _handleMessage(RemoteMessage message) {
//     final data = message.data;
//     print('📲 Push clicked: $data');
//     // 원하는 라우팅 처리
//   }
// }


