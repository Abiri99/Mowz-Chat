import 'package:flutter/material.dart';
import 'package:mowz/screens/messages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  double _elevation = 0.0;
  TabController _tabController;

  _scrollListener(_controller) {
    if (_controller.offset == 0.0) {
      setState(() {
        _elevation = 0.0;
      });
    } else if (_controller.offset > _controller.position.minScrollExtent) {
      setState(() {
        _elevation = 8.0;
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
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.yellow,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.message),
            ),
            Tab(
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: _elevation,
        title: RichText(
          text: TextSpan(children: [
            TextSpan(text: "Mowz", style: Theme.of(context).textTheme.headline),
            TextSpan(text: "Chat", style: Theme.of(context).textTheme.body1)
          ]),
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Messages(_scrollListener),
          Messages(_scrollListener)
        ],
        controller: _tabController,
      )
    );
  }
}
