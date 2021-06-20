import 'dart:convert';
import 'package:catlogapp/model/catlog.dart';
import 'package:catlogapp/widgets/drawer.dart';
import 'package:catlogapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catlogJson = await rootBundle.loadString('assets/files/catlog.json');
    var decodedData = jsonDecode(catlogJson);
    var productData = decodedData['products'];
    CatlogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catlog App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: (CatlogModel.items != null &&
                  CatlogModel.items?.isNotEmpty == true)
              ? ListView.builder(
                  itemCount: CatlogModel.items?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemWidget(
                      item: CatlogModel.items![index],
                    );
                  },
                )
              : Center(
                  child: CircularProgressIndicator(),
                )),
      drawer: MyDrawer(),
    );
  }
}
