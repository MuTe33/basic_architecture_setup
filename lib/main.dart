import 'package:basic_architecture_setup/app/testpage/test_page.dart';
import 'package:basic_architecture_setup/locator.dart';
import 'package:flutter/material.dart';

void main() async {
  initSyncDependencies();
  await initAsyncDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TestPage(),
    );
  }
}
