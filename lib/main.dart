import 'package:commute_forecast/classes/db_tools.dart';
import 'package:flutter/material.dart';
import 'package:commute_forecast/widget/ui_branch.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainWidget(),
    ),
  );
}

class MainWidget extends StatelessWidget {
  MainWidget({super.key});

  final DbTools dbtools = DbTools();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: dbtools.getSnapShot("PAGE_SLOT_INFO"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String sWidgetName = dbtools.getFieldValue(
                snapshot.data!, "PAGE_NAME", "MAIN", "WIDGET_NAME");
            return UiBranch(
              widgetName: sWidgetName,
            );
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
