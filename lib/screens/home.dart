import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double _elevation = 0.0;
  ScrollController _controller;

  _scrollListener() {
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
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: <Widget>[
            // SizedBox(
            //   height: MediaQuery.of(context).viewPadding.top + 16,
            // ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(right: 24, left: 24, top: 16),
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        spreadRadius: 0.1)
                  ]),
              child: Text(
                "profile data",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        spreadRadius: 0.1)
                  ]),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(right: 24, left: 24, top: 16),
              child: Text(
                "favorites",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
              width: double.infinity,
              height: 1000,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        spreadRadius: 0.1)
                  ]),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(right: 24, left: 24, top: 16),
              child: Text(
                "Users",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}
