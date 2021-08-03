part of 'widgets.dart';

class ImageTitle extends StatelessWidget {
  final String title;

  const ImageTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            AutoSizeText(
              title,
              style: imageTitleStyle,
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
