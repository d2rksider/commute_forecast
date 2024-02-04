//import 'dart:html';

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

//import { collection, getDocs } from "firebase/firestore";
//import firebase from 'firebase/compat/app';
//import 'firebase/firestore';

class UiBranch extends StatelessWidget {
  const UiBranch({super.key, required this.widgetName});
  final String widgetName;

  @override
  Widget build(BuildContext context) {
    return getWidget(widgetName);
  }

  Widget getWidget(String sWidgetName) {
    switch (sWidgetName) {
      case "ui_000001":
        return ui_000001();
      case "ui_000002":
        return ui_000001();
    }
    return ui_000000();
  }

  Widget ui_000000() {
    return const Text("0000");
  }

  Widget ui_000001() {
    return const Text("1234");
  }

  Widget ui_000002() {
    return const Text("5678");
  }
}
