import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'View/Homepage.dart';
import 'View/todo_bloc.dart';
import 'data/db_helper.dart';

void main() {
  runApp( BlocProvider(
      create: (context)=>TodoBloc(dBhelper: DBhelper.getInstance()),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}