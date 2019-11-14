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
        height: 150,
      ),
      // appBar: AppBar(
      //   elevation: 12,
      //   backgroundColor: Colors.white,
      //   leading: Container(
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(100),
      //       child: Image.network(
      //         "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      //   centerTitle: true,
      //   title: Text("title"),
      //   actions: <Widget>[Icon(Icons.settings)],
      // ),
      body: Container(
        child: Column(
          children: <Widget>[
            // Header(),
            SingleChildScrollView()
          ],
        ),
      ),
    );
  }
}
