import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/components/cv_section.dart';
import 'package:portfolio/screens/home/components/footer.dart';
import 'package:portfolio/screens/home/components/info_section.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * .30;
    return Container(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Info(),
          SizedBox(
            height: 10,
          ),
          CVSection(),
          Divider(
            color: Colors.white,
            indent: _width,
            endIndent: _width,
          ),SizedBox(height: 1.0,),
          Footer()
        ],
      ),
    ));
  }
}
