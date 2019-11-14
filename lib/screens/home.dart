import 'package:flutter/material.dart';
import '../widgets/my_custom_appbar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  double _elevation = 0.0;
  TabController _tabController;

  _scrollListener(_controller) {
    if (_controller.offset == 0.0) {
      setState(() {
        _elevation = 0.0;
      });
    } else if (_controller.offset > _controller.position.minScrollExtent) {
      setState(() {
        _elevation = 6.0;
      });
    }
  }

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff9A7DFA),
        child: Icon(Icons.add, color: Colors.white),
      ),
      appBar: MyCustomAppBar(
        height: 64,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.black12,
                      ),
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.search, color: Colors.black38,),
                        SizedBox(width: 8,),
                        Text("Search conversation ...", style: TextStyle(color: Colors.black38)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
