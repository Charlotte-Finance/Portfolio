part of 'widgets.dart';

class MyLinearPercentIndicator extends StatelessWidget {
  final double percent;
  final AssetImage image;

  const MyLinearPercentIndicator({required this.percent, required this.image});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      backgroundColor: Colors.white38,
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.2,
      animation: true,
      animationDuration: 200,
      lineHeight: 50.0,
      percent: percent,
      center: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: image,
          ),
        ),
      ),
    );
  }
}

class MyCircularPercentIndicator extends StatelessWidget {
  final double percent;
  final AssetImage image;

  const MyCircularPercentIndicator(
      {required this.percent, required this.image});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      backgroundColor: Colors.white38,
      circularStrokeCap: CircularStrokeCap.round,
      progressColor: Colors.white,
      radius: MediaQuery.of(context).size.width * 0.09,
      lineWidth: 20,
      animation: true,
      percent: percent,
      center: Container(
        width: MediaQuery.of(context).size.width * 0.06,
        height: MediaQuery.of(context).size.width * 0.06,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.contain,
            image: image,
          ),
        ),
      ),
    );
  }
}
