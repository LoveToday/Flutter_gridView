import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vaffle"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  Widget getGridData(BuildContext context, int index) {
    return GridTile(
      child: Text("$index 个cell"),
    );
  }

  List<Widget> _getWidgetData() {
    var list = List<Widget>();
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        child: Container(
          child: Text("$i 个 cell 测试"),
          color: Colors.purple,
        ),
        // color: Colors.purple,
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.black,
          ),
        ),
      ));
    }
    return list;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return GridView.count(
  //     padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
  //     crossAxisCount: 2, // 一行的条数
  //     mainAxisSpacing: 20, // 垂直元素之间的间距
  //     crossAxisSpacing: 20, //水平元素之间的间距
  //     childAspectRatio: 0.8, // 宽高比例
  //     children: this._getWidgetData(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      itemBuilder: this.getGridData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 一行的条数
        mainAxisSpacing: 20, // 垂直元素之间的间距
        crossAxisSpacing: 20, //水平元素之间的间距
        childAspectRatio: 0.8, // 宽高比例
      ),
    );
  }
}
