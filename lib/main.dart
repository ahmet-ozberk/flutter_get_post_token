import 'package:flutter/material.dart';
import 'package:flutter_get_post_token/views/login.dart';
import 'package:flutter_get_post_token/views/splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:grock/grock.dart';

void main() async {
  await GetStorage.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      navigatorKey: Grock.navigationKey,
      scaffoldMessengerKey: Grock.snackbarMessengerKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}
