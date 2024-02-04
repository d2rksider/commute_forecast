import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DbTools {
//   final db = FirebaseFirestore.instance;
// db.collection("PAGE_SLOT_INFO").get().then((event) {
//       for (var doc in event.docs) {}
//     })
  final db = FirebaseFirestore.instance;

  Stream<QuerySnapshot<Object?>> getSnapShot(String sCollectionId) {
    return db.collection(sCollectionId).snapshots();
  }

  String getFieldValue(QuerySnapshot<Object?> snapshotData, String sFieldName,
      String sFieldValue, String sNeedFieldName) {
    for (var doc in snapshotData.docs) {
      if (doc[sFieldName] == sFieldValue) {
        debugPrint(doc[sNeedFieldName]);
        return doc[sNeedFieldName];
      }
    }
    return '';
  }

  // bool readField(String sCollectionId, String sFieldName) {
  //   CollectionReference pageSlotInfo =
  //     FirebaseFirestore.instance.collection(sCollectionId);

  //   pageSlotInfo.snapshots()

  //   return true;
  // }

  // bool write(String id) {
  //   return true;
  // }
}
