import 'package:admin_matbkh24/helper/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'card_chat.dart';
import 'color_background.dart';
import 'image_backround_widget.dart';

class BoxChat extends StatelessWidget {
  const BoxChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isDesktop(context)? Expanded(
        child: Stack(
          children: [
            const ImageBackroundWidget(),
            const ColorBackground(),
            Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/logouncolor.svg",
                      width: 70,
                      height: 70,
                    ),
                    const Text(
                      'غرفة التحكم',
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 27,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Stack(

                      children: [
                        const Align(
                            alignment: Alignment.center,
                            child: CardChat()),
                        Positioned(
                            bottom: -20,
                            left: 80,
                            child: Image.asset(
                              "assets/images/img_logn.png",
                              height: 220,
                              width: 220,
                            )),
                        Positioned(
                          bottom: 20,
                          right: 180,
                          child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: const Color(0xffffca08),
                            ),
                            child: const Text(
                              'دردشة',
                              style: TextStyle(
                                fontFamily: 'home',
                                fontSize: 18,
                                color: Color(0xffffffff),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ))
          ],
        )):Stack(
      children: [
        const ImageBackroundWidgetMobile(),
        const ColorBackgroundMobail(),
        Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/icons/logouncolor.svg",
                  width: 70,
                  height: 70,
                ),
                const Text(
                  'غرفة التحكم',
                  style: TextStyle(
                    fontFamily: 'home',
                    fontSize: 27,
                    color: Color(0xff242021),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                Stack(

                  children: [
                    const Align(
                        alignment: Alignment.center,
                        child: CardChat()),
                    Positioned(
                        bottom: -20,
                        left: 80,
                        child: Image.asset(
                          "assets/images/img_logn.png",
                          height: 220,
                          width: 220,
                        )),
                    Positioned(
                      bottom: 20,
                      right: 180,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color(0xffffca08),
                        ),
                        child: const Text(
                          'دردشة',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 18,
                            color: Color(0xffffffff),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ))
      ],
    );
  }
}