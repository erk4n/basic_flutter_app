import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'App.dart';

main() {
  final app = App();
  runApp(app);

  createDBConnection();
}

createDBConnection() async {
  //use 10.0.2.2 isntead of localhost when running on emulator
  var db = Db("mongodb://10.0.2.2:27017/mydb");
  await db.open();

  var coll = db.collection("mycollection");

  await coll.insertAll([
    {'login': 'jdoe', 'name': 'John Doe', 'email': 'john@doe.com', "age": 23},
    {'login': 'lsmith', 'name': 'Lucy Smith', 'email': 'lucy@smith.com', "age": 50}
  ]);

  var test = await coll.find(where.eq("login", "jdoe")).toList();
  print(test);
}
