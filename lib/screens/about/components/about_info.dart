import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double paddingTop = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? .0001 : .30);

    return Container(
      child: ScreenHelper(
        desktop: _buildDesktop(context),
        tablet: _buildTablet(context),
        mobile: _buildMobile(context, paddingTop),
      ),
    );
  }
}



Widget _buildDesktop(BuildContext context) {
  return Center(
      child: ResponsiveWrapper(
    maxWidth: kDesktopMaxWidth,
    minWidth: kDesktopMaxWidth,
    defaultScale: false,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Container(
          child: Image.asset(
            'assets/images/person.jpeg',
            fit: BoxFit.contain,
          ),
        )),
        SizedBox(
          width: 50.0,
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
              color: kbackgroundColor,
              // borderRadius: BorderRadius.only(
              //   bottomRight: Radius.circular(10),
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 30,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border(
                  bottom: BorderSide(
                      color: kPrimaryColor,
                      width: 50,
                      style: BorderStyle.solid),
                  right: BorderSide(color: kPrimaryColor))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text: ' Franklin Osei.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 45.0),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am a passionate ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text: 'Software Engineer',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0),
                  ),
                  TextSpan(
                    text: ',  with experience in ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text:
                        'Machine Learning, Mobile Application and Web Development.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0),
                  ),
                ],
              )),
              // Text(
              //   'I am a Passionate upcoming',
              //   style: GoogleFonts.oswald(
              //       color: kCaptionColor,
              //       fontWeight: FontWeight.w900,
              //       fontSize: 20.0),
              // ),
            ],
          ),
        ))
      ],
    ),
  ));
}

Widget _buildTablet(BuildContext context) {
  return Center(
      child: ResponsiveWrapper(
    maxWidth: kTabletMaxWidth,
    minWidth: kTabletMaxWidth,
    defaultScale: false,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Container(
          child: Image.asset(
            'assets/images/person.jpeg',
            fit: BoxFit.contain,
          ),
        )),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
            child: Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          width: double.infinity,
          height: 370,
          decoration: BoxDecoration(
              color: kbackgroundColor,
              // borderRadius: BorderRadius.only(
              //   bottomRight: Radius.circular(10),
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 30,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border(
                  bottom: BorderSide(color: kPrimaryColor),
                  right: BorderSide(color: kPrimaryColor))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text: ' Franklin Osei.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am a passionate ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text: 'Software Engineer',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text: ',  with experience in ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text:
                        'Machine Learning, Mobile Application and Web Development.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                ],
              )),
              // Text(
              //   'I am a Passionate upcoming',
              //   style: GoogleFonts.oswald(
              //       color: kCaptionColor,
              //       fontWeight: FontWeight.w900,
              //       fontSize: 20.0),
              // ),
            ],
          ),
        ))
      ],
    ),
  ));
}

Widget _buildMobile(BuildContext context, double paddingTop) {
  return Center(
      child: Container(
    padding: EdgeInsets.only(top: paddingTop),
    constraints: BoxConstraints(maxWidth: getMobileMaxWidth(context)),
    width: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Image.asset(
            'assets/images/person.jpeg',
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          width: double.infinity,
          height: 360,
          decoration: BoxDecoration(
              color: kbackgroundColor,
              // borderRadius: BorderRadius.only(
              //   bottomRight: Radius.circular(10),
              // ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 80,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              border: Border(
                  bottom: BorderSide(color: kPrimaryColor),
                  right: BorderSide(color: kPrimaryColor, width: 5))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text: ' Franklin Osei.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0),
                  ),
                ],
              )),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'I am a passionate ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text: 'Software Engineer',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                  TextSpan(
                    text: ',  with experience in ',
                    style: GoogleFonts.oswald(
                        color: kCaptionColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text:
                        'Machine Learning, Mobile Application and Web Development.',
                    style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 25.0),
                  ),
                ],
              )),
            ],
          ),
        )
      ],
    ),
  ));
}
