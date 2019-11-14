import 'package:flutter/material.dart';
import 'package:mowz/widgets/card_btn.dart';

class HomeBtns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        CardBtn(
          icon: Icons.person,
          title: "profile",
          onTap: () {
            print("hi");
          },
        ),
        CardBtn(
          icon: Icons.message,
          title: "messages",
        ),
        CardBtn(
          icon: Icons.settings,
          title: "settings",
        ),
      ],
    );
  }
}
