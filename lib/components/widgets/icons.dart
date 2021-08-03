part of 'widgets.dart';

class HorizontalIconDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String details;

  const HorizontalIconDetails(
      {required this.icon, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleIcon(icon: icon),
        SizedBox(width: MediaQuery.of(context).size.width * 0.02),
        Container(
          width: MediaQuery.of(context).size.width * 0.15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                title,
                style: darkBoldStyle,
                maxLines: 1,
              ),
              AutoSizeText(
                details,
                style: darkBodyStyle,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VerticalIconDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String details;

  const VerticalIconDetails(
      {required this.icon, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleIcon(icon: icon),
        SizedBox(height: 40),
        Column(
          children: [
            AutoSizeText(
              title,
              style: lightBoldStyle,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            AutoSizeText(
              details,
              style: lightBodyStyle,
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;

  const CircleIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.orange,
          ),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
        child: Icon(
          icon,
          size: MediaQuery.of(context).size.width * 0.02,
          color: Colors.orange,
        ),
      ),
    );
  }
}
