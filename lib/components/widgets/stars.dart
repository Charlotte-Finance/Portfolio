part of 'widgets.dart';


class StarsMark extends StatelessWidget {
  final String name;
  final String description;
  final int mark;
  final int maxMark;

  const StarsMark(
      {required this.name,
      required this.description,
      required this.mark,
      this.maxMark = 5});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for (int j = 0; j < mark; j++) ...[
              Icon(Icons.star),
            ],
            for (int j = 0; j < (maxMark - mark); j++) ...[
              Icon(Icons.star_border),
            ],
          ],
        ),
        Text(name, style: bigDarkBoldStyle),
        Text(description, style: darkBoldStyle),
      ],
    );
  }
}
