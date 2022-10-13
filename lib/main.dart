import 'package:fltr_riverpod/features/home/home_page.dart';
import 'package:fltr_riverpod/router.dart' as router;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: router.NavigatorRoutes.initial,
      onGenerateRoute: router.Router.generateRoutes,
    );
  }
}
