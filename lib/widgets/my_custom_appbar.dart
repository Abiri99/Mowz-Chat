import 'package:flutter/material.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MyCustomAppBar({
    Key key,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pt = MediaQuery.of(context).viewInsets.top;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 5),
              blurRadius: 15,
            ),
          ]),
          child: Padding(
            padding: EdgeInsets.only(top: 16, bottom: 8, right: 12, left: 12,),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg",
                      fit: BoxFit.cover,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  Text("Conversations", style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20
                  ),),
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () => null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
