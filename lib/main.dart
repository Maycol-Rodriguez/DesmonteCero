import 'package:dvida/dzero_app.dart';
import 'package:flutter/material.dart';

import '01theme/officialTheme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DZero',
        theme: myTheme,
        home: DZeroApp());
  }
}
