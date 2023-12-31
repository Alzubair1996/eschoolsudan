import 'package:flutter/material.dart';

import 'Liests.dart';
import 'List_Green.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: ListScreen(
        a1: Educationa.stages,
        education1: 0,
        grades1: -1,
        subjects1: -1,
        units1: -1,
        lessons1: -1,
        name: "المرحلة الداسية",
        item: '',
      ),
    );
  }
}
