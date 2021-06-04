import 'package:flutter/material.dart';
import 'package:portfolio/screens/about/components/about_info.dart';
import 'package:portfolio/screens/about/components/skills_section.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height * .1;
    return Container(
      child: ListView(
        children: [
          SizedBox(height: _height),
          AboutInfo(),
          SizedBox(
            height: 100,
          ),
          Skills()
        ],
      ),
    );
  }
}
