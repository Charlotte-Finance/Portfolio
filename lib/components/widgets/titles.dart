part of 'widgets.dart';

class ImageTitle extends StatelessWidget {
  final String title;
  final double height;

  const ImageTitle({required this.title, required this.height,});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            SizedBox(
              height: height,
            ),
            Stack(
              children: <Widget>[
                // Stroked text as border.
                AutoSizeText(
                  title,
                  style: imageBorderTitleStyle,
                  maxLines: 1,
                ),
                // Solid text as fill.
                AutoSizeText(
                  title,
                  style: imageTitleStyle,
                  maxLines: 1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WidgetTitle extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subtitleStyle;
  final Alignment alignment;

  const WidgetTitle({
    required this.title,
    required this.subTitle,
    required this.titleStyle,
    required this.subtitleStyle,
    this.alignment = Alignment.topCenter
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: alignment,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: AutoSizeText(
              title,
              style: titleStyle,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: alignment,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: AutoSizeText(
              subTitle,
              style: subtitleStyle,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 50),
      ],
    );
  }
}
