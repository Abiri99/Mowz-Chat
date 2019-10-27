import 'package:flutter/material.dart';

class Messages extends StatefulWidget {

  var _scrollListener;

  Messages(this._scrollListener);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() => widget._scrollListener(_controller));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                      color: Colors.black26, blurRadius: 15, spreadRadius: 0.1)
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
                      color: Colors.black26, blurRadius: 15, spreadRadius: 0.1)
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
                      color: Colors.black26, blurRadius: 15, spreadRadius: 0.1)
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
    );
  }
}
