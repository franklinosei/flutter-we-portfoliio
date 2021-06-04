import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class Info extends StatelessWidget {
  final CarouselController controller = CarouselController();

  List<String> textHeaders = [
    "MACHINE LEARNING ENGINEER",
    "MOBILE APP DEVELOPER",
    "FULL STACK WEB DEVELOPER"
  ];

  List<String> textDesc = [
    "Machine Learning Engineer",
    "Mobile app developer",
    "Web designer"
  ];

  build_carousel_items(
      BuildContext context, String text_header, String textDesc) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
          Text(
            text_header,
            style: GoogleFonts.oswald(
                color: kPrimaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 16.0),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "FRANKLIN\ OSEI",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "${textDesc}, based in Ghana.",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Text(
              "Need a ${textDesc} for a project?",
              style: TextStyle(
                color: kCaptionColor,
                fontSize: 15.0,
                height: 1.5,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              DefaultTabController.of(context).animateTo(4);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text(
                " Got a project? Let's talk.",
                style: TextStyle(
                  height: 1.5,
                  color: kPrimaryColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {
                  DefaultTabController.of(context).animateTo(3);
                },
                child: Text(
                  "View Sample Projects",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? 0.7 : 0.85);

    return Container(
      height: carouselContainerHeight,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: ScreenHelper(
              desktop: _buildDesktop(
                  context,
                  textHeaders,
                  textDesc,
                  controller,
                  carouselContainerHeight,
                  build_carousel_items,
                  Container(
                    child: Image.asset(
                      'assets/images/person.jpeg',
                      fit: BoxFit.contain,
                    ),
                  )),
              tablet: _buildTablet(
                  context,
                  textHeaders,
                  textDesc,
                  controller,
                  carouselContainerHeight,
                  build_carousel_items,
                  Container(
                    child: Image.asset(
                      'assets/images/person.jpeg',
                      fit: BoxFit.contain,
                    ),
                  )),
              mobile: _buildMobile(context, textHeaders, textDesc, controller,
                  carouselContainerHeight, build_carousel_items),
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildDesktop(
  BuildContext context,
  List textHeaders,
  List textDesc,
  CarouselController controller,
  double carouselContainerHeight,
  Function build_carousel_items,
  Widget image,
) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                  autoPlay: true,
                  pageSnapping: true,
                  autoPlayInterval: Duration(seconds: 5),
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight),
              items: List.generate(
                  textHeaders.length,
                  (index) => Builder(
                        builder: (BuildContext context) {
                          return Container(
                            constraints: BoxConstraints(
                                minHeight: carouselContainerHeight),
                            child: build_carousel_items(
                              context,
                              textHeaders[index],
                              textDesc[index],
                            ),
                          );
                        },
                      )).toList(),
            ),
          ),
          Expanded(child: image)
        ],
      ),
    ),
  );
}

Widget _buildTablet(
  BuildContext context,
  List textHeaders,
  List textDesc,
  CarouselController controller,
  double carouselContainerHeight,
  Function build_carousel_items,
  Widget image,
) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kTabletMaxWidth,
      minWidth: kTabletMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: controller,
              options: CarouselOptions(
                  autoPlay: true,
                  pageSnapping: true,
                  autoPlayInterval: Duration(seconds: 5),
                  viewportFraction: 1,
                  scrollPhysics: NeverScrollableScrollPhysics(),
                  height: carouselContainerHeight),
              items: List.generate(
                  textHeaders.length,
                  (index) => Builder(
                        builder: (BuildContext context) {
                          return Container(
                            constraints: BoxConstraints(
                                minHeight: carouselContainerHeight),
                            child: build_carousel_items(
                              context,
                              textHeaders[index],
                              textDesc[index],
                            ),
                          );
                        },
                      )).toList(),
            ),
          ),
          Expanded(child: image)
        ],
      ),
    ),
  );
}

Widget _buildMobile(
  BuildContext context,
  List textHeaders,
  List textDesc,
  CarouselController controller,
  double carouselContainerHeight,
  Function build_carousel_items,
) {
  return Center(
      child: Container(
    constraints: BoxConstraints(maxWidth: getMobileMaxWidth(context)),
    width: double.infinity,
    child: CarouselSlider(
      carouselController: controller,
      options: CarouselOptions(
          autoPlay: true,
          pageSnapping: true,
          autoPlayInterval: Duration(seconds: 5),
          viewportFraction: 1,
          scrollPhysics: NeverScrollableScrollPhysics(),
          height: carouselContainerHeight),
      items: List.generate(
          textHeaders.length,
          (index) => Builder(
                builder: (BuildContext context) {
                  return Container(
                    constraints:
                        BoxConstraints(minHeight: carouselContainerHeight),
                    child: build_carousel_items(
                      context,
                      textHeaders[index],
                      textDesc[index],
                    ),
                  );
                },
              )).toList(),
    ),
  ));
}
