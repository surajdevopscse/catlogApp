import 'package:catlogapp/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catlog App'),
      ),
      body: Center(
        child: Container(
          child: Text('The Catlog App'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
