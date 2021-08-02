part of 'widgets.dart';

class IconDetails extends StatelessWidget {
  final IconData icon;
  final String title;
  final String details;

  const IconDetails(
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
                style: boldStyle,
                maxLines: 1,
              ),
              AutoSizeText(
                details,
                style: bodyStyle,
                maxLines: 3,
              ),
            ],
          ),
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
