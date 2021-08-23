import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/styles.dart';

class ImagePage extends StatelessWidget {
  final String title;
  final List<AssetImage> images;

  const ImagePage({
    required this.title,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: bigLightBoldStyle,
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                for (int i = 0; i < images.length; i++) ...[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * (0.25/images.length),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: images[i],
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
