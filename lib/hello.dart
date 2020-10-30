

import 'package:flutter/material.dart';
import 'package:mongo_dart/mongo_dart.dart';

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
    ),
      body: Text("Body Text"),
    );
  }
}