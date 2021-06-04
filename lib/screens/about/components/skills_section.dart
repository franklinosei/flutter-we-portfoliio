import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/models/skills_model.dart';
import 'package:portfolio/services/skills.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Skills extends StatefulWidget {
  Skills({Key key}) : super(key: key);

  @override
  _SkillsState createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  
  // final GetSkills api = GetSkills();

  // Future<Skill> futureSkills;
  // Future<DevTool> futureDevTools;

  _build_progress_slider() {
    return SleekCircularSlider(
      innerWidget: (double value) {
        return Icon(
          FontAwesome5.python,
          color: kPrimaryColor,
        );
      },
      appearance: CircularSliderAppearance(
          size: 120,
          customColors: CustomSliderColors(
              progressBarColor: kPrimaryColor, trackColor: kPrimaryColor),
          customWidths: CustomSliderWidths(progressBarWidth: 10)),
      min: 0,
      max: 100,
      initialValue: 80,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildDesktop(context, _build_progress_slider),
        tablet: _buildTablet(context, _build_progress_slider),
        mobile: _buildMobile(context, _build_progress_slider),
      ),
    );
  }
}

Widget _buildDesktop(
    BuildContext context, Function build_skill) {
  return Center(
      child: ResponsiveWrapper(
          maxWidth: kDesktopMaxWidth,
          minWidth: kDesktopMaxWidth,
          defaultScale: false,
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('< PROGRAMMING TOOLS />',
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  border: Border(
                                      bottom: BorderSide(
                                          color: kPrimaryColor,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      right: BorderSide(color: kPrimaryColor))),
                              child: Column(
                                children: [
                                  Text('Proficient 💪',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        color: kPrimaryColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      )),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Wrap(
                                    spacing: 30.0,
                                    runSpacing: 25.0,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      build_skill(),
                                      build_skill(),
                                      build_skill(),
                                      build_skill()
                                    ],
                                  )
                                ],
                              ))),
                      SizedBox(
                        width: 60,
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  border: Border(
                                      bottom: BorderSide(
                                          color: kPrimaryColor,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      left: BorderSide(color: kPrimaryColor))),
                              child: Column(
                                children: [
                                  Text('Familiar 🤔',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        color: kPrimaryColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      )),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Wrap(
                                    spacing: 30.0,
                                    runSpacing: 25.0,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      build_skill(),
                                      build_skill(),
                                      build_skill(),
                                      build_skill()
                                    ],
                                  )
                                ],
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ]);
          })));
}

Widget _buildTablet(BuildContext context, Function build_skill) {
  return Center(
      child: ResponsiveWrapper(
          maxWidth: kTabletMaxWidth,
          minWidth: kTabletMaxWidth,
          defaultScale: false,
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('< PROGRAMMING TOOLS />',
                      style: GoogleFonts.oswald(
                        color: kPrimaryColor,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w900,
                        height: 1.3,
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  border: Border(
                                      bottom: BorderSide(
                                          color: kPrimaryColor,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      right: BorderSide(color: kPrimaryColor))),
                              child: Column(
                                children: [
                                  Text('Proficient 💪',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        color: kPrimaryColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      )),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Wrap(
                                    spacing: 30.0,
                                    runSpacing: 25.0,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      build_skill(),
                                      build_skill(),
                                      build_skill(),
                                      build_skill()
                                    ],
                                  )
                                ],
                              ))),
                      SizedBox(
                        width: 60,
                      ),
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
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
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  border: Border(
                                      bottom: BorderSide(
                                          color: kPrimaryColor,
                                          width: 2,
                                          style: BorderStyle.solid),
                                      left: BorderSide(color: kPrimaryColor))),
                              child: Column(
                                children: [
                                  Text('Familiar 🤔',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(
                                        color: kPrimaryColor,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      )),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Wrap(
                                    spacing: 30.0,
                                    runSpacing: 25.0,
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      build_skill(),
                                      build_skill(),
                                      build_skill(),
                                      build_skill()
                                    ],
                                  )
                                ],
                              )))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ]);
          })));
}

Widget _buildMobile(BuildContext context, Function build_skill) {
  return Center(
      child: Container(
          constraints: BoxConstraints(maxWidth: getMobileMaxWidth(context)),
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('< PROGRAMMING TOOLS />',
                    style: GoogleFonts.oswald(
                      color: kPrimaryColor,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                    )),
                SizedBox(
                  height: 40,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 30),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            border: Border(
                                top: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2,
                                    style: BorderStyle.solid),
                                bottom: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2,
                                    style: BorderStyle.solid),
                                right: BorderSide(color: kPrimaryColor))),
                        child: Column(
                          children: [
                            Text('Proficient 💪',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w900,
                                  height: 1.3,
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            Wrap(
                              spacing: 30.0,
                              runSpacing: 25.0,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                build_skill(),
                                build_skill(),
                                build_skill(),
                                build_skill()
                              ],
                            )
                          ],
                        )),
                    // SizedBox(
                    //   width: 60,
                    // ),
                    Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            border: Border(
                                bottom: BorderSide(
                                    color: kPrimaryColor,
                                    width: 2,
                                    style: BorderStyle.solid),
                                left: BorderSide(color: kPrimaryColor))),
                        child: Column(
                          children: [
                            Text('Familiar 🤔',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w900,
                                  height: 1.3,
                                )),
                            SizedBox(
                              height: 40,
                            ),
                            Wrap(
                              spacing: 30.0,
                              runSpacing: 25.0,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                build_skill(),
                                build_skill(),
                                build_skill(),
                                build_skill()
                              ],
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ])));
}
