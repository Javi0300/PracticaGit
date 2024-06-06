import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider/providers/counter_provider.dart';
import 'package:provider/screens/home_screen.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider App',
      home: const HomeScreen(),
    );
  }
}

