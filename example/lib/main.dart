import 'package:example/layout_bar.dart';
import 'package:example/physical_vs_logical_layout_bar.dart';
import 'package:flutter/material.dart';
import 'package:layout/layout.dart';

import 'example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Layout(
      format: PhysicalPixelLayoutFormat(),
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.white,
            ),
            scaffoldBackgroundColor: Colors.grey[200],
            primarySwatch: Colors.blue,
          ),
          builder: (context, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: child!),
                LayoutBar(),
                PhysicalVSLogicalLayoutBar(),
              ],
            );
          },
          home: MyHomePage(title: 'Layout')),
    );
  }
}
