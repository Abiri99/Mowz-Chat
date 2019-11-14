import 'package:flutter/material.dart';
import 'package:mowz/widgets/home_buttons.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      padding: EdgeInsets.only(top: MediaQuery.of(context).viewInsets.top),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Mowz", style: Theme.of(context).textTheme.title),
                  TextSpan(
                      text: "Chat", style: Theme.of(context).textTheme.body1)
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            left: 0,
            // top: MediaQuery.of(context).size.height,
            bottom: 0,
            // bottom: 20,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              child: HomeBtns(),
            ),
          )
        ],
      ),
    );
  }
}
