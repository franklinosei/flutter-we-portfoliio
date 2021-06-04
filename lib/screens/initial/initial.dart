import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/home/home.dart';
import 'package:portfolio/utils/constants.dart';

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {},
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: " < ",
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "F",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "O",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " /",
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ">",
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Initial extends StatelessWidget {
  const Initial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: kbackgroundColor,
            // elevation: 10.0,
            bottom: TabBar(
              unselectedLabelColor: kPrimaryColor,
              indicatorColor: kPrimaryColor,
              tabs: [
                Tab(child: Icon(Icons.home)),
                Tab(child: Icon(Icons.book)),
                Tab(child: Icon(Icons.settings)),
                Tab(child: Icon(Icons.code)),
                Tab(child: Icon(Icons.contact_mail))
              ],
            ),
            title: HeaderLogo(),
          ),
          body: TabBarView(
            children: [
              Homepage(),
              About(),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ));
  }
}
