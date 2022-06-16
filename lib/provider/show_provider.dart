import 'package:admin_panel/model/product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

late Product featureData;
List<Product> feature = [];
Future<void> getFeatureData() async {
  List<Product> tempList = [];
  QuerySnapshot featureSnapshot = await FirebaseFirestore.instance
      .collection('Products')
      .doc('R37rXfK1lzu3kc9NkRvU')
      .collection('featureproduct')
      .get();
  featureSnapshot.docs.forEach(
    (element) {
      featureData = Product(
        image: element.get('image'),
        name: element.get('name'),
        type: element.get('type'),
        price: element.get('price'),
      );
      tempList.add(featureData);
    },
  );
  feature = tempList;
}

List<Product> get getFeatureList {
  return feature;
}
