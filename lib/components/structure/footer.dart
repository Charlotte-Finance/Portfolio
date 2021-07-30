import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100.0,
      decoration: BoxDecoration(color: Colors.black54),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Facebook"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Twitter"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("LinkedIn"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Contact us on \n social media",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
    );
  }
}
