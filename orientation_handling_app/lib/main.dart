import 'package:flutter/material.dart';
import 'Widgets/OrientationBuilderWidget.dart';
import 'Widgets/OrientationLayoutIconsWidget.dart';
import 'Widgets/OrientationLayoutWidget.dart';
import 'Widgets/GridViewWidget.dart';

void main() => runApp(OrientationApp());

class OrientationApp extends StatefulWidget {
  const OrientationApp({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<OrientationApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Orientation App'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  OrientationLayoutIconsWidget(),
                  Divider(),
                  OrientationLayoutWidget(),
                  Divider(),
                  GridViewWidget(),
                  Divider(),
                  OrientationBuilderWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
