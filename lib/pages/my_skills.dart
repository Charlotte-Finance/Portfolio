import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/my_skills/it_skills.dart';
import 'package:portfolio/models/language/my_skills.dart';
import 'package:portfolio/models/language/tab.dart';
import 'package:portfolio/components/widgets/widgets.dart';


class SkillsPage extends StatefulWidget {
  final MySkillsTab tab;

  const SkillsPage({required this.tab});

  @override
  State<StatefulWidget> createState() => SkillsPageState(tab: tab);
}

class SkillsPageState extends State<SkillsPage> {
  MySkillsTab tab;

  SkillsPageState({required this.tab});

  @override
  Widget build(BuildContext context) {
    tab = widget.tab;
    return Column(
      children: [
        ImageTitle(title: tab.title, height: MediaQuery.of(context).size.height * 0.35),
        ITSkills(itSkillsLanguage: tab.itSkillsLanguage)

      ],
    );
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
              tab.title,
              style: TextStyle(fontSize: 50, color: Colors.tealAccent),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
