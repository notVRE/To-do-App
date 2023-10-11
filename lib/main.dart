import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tba/homePage.dart';

import 'appState.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To-do App',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 92, 185, 55))),
        home: const MyHomePage(),
      ),
    );
  }
}
