import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final Widget child;
  final int pageNumber;
  final int maxPage;

  const ProjectCard({
    required this.child,
    required this.pageNumber,
    required this.maxPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: MediaQuery.of(context).size.width * 0.035,
        right: MediaQuery.of(context).size.width * 0.035,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          child,
          Text(
            "$pageNumber/$maxPage",
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
