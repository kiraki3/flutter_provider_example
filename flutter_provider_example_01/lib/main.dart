import 'package:flutter/material.dart';
import 'package:flutter_provider_example_01/src/home.dart';
import 'package:flutter_provider_example_01/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          // CountProvider라는 클래스를 생성하고, 이 클래스가 상태를 관리
          create: (BuildContext context) => CountProvider(),
          child: Home(), // child 하위에 모든 것들은 CountProvider에 접근 할 수 있다.
        ));
  }
}
