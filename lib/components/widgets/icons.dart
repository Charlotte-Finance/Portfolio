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
        SizedBox(width: 50),
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
            ),
            AutoSizeText(
              details,
              style: lightBodyStyle,
              maxLines: 3,
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
            borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        child: Padding(padding: EdgeInsets.all(20), child: Icon(
          icon,
          size: 40.0,
          color: Colors.orange,
        ),),
    );
    return CircleAvatar(
      radius: 41,
      backgroundColor: Colors.orange,
      child: CircleAvatar(
        foregroundColor: Colors.black87,
        backgroundColor: Colors.white,
        radius: 40,
        child: Icon(
          icon,
          size: 40.0,
          color: Colors.orange,
        ),
      ),
    );
  }
}
