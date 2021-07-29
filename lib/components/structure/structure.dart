import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/structure/footer.dart';
import 'package:portfolio/models/language/language.dart';

import 'app_bar.dart';

class Structure extends StatefulWidget {
  final Language language;
  final Widget child;
  final AssetImage image;
  final Function onChanged;

  Structure({
    required this.language,
    required this.child,
    required this.image,
    required this.onChanged,
  });

  @override
  State<StatefulWidget> createState() => _Structure(
      language: language, image: image, child: child, onChanged: onChanged);
}

class _Structure extends State<Structure> {
  Language language;
  final AssetImage image;
  Widget child;
  final Function onChanged;

  _Structure(
      {required this.language,
      required this.image,
      required this.child,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    language = widget.language;
    child = widget.child;
    return Scaffold(
      body: Scrollbar(
        //controller: widget.scrollController,
        interactive: true,
        showTrackOnHover: true,
        thickness: 10.0,
        hoverThickness: 10.0,
        isAlwaysShown: true,
        child: SingleChildScrollView(
          //controller: widget.scrollController,
          child: Column(
            children: [
              Container(
                color: Color(0xFFB484848),
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: image,
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width,
                            child: MyAppBar(
                              onChanged: onChanged,
                              language: language,
                            ),
                          ),
                        ],
                      ),
                    ),
                    child,
                  ],
                ),
              ),
              Container(
                color: Colors.black26,
                height: MediaQuery.of(context).size.height * 0.1,
                child: MyFooter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
