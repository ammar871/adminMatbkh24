import 'package:flutter/cupertino.dart';

class ColorBackground extends StatelessWidget {
  const ColorBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFDD2C).withOpacity(.5),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      height: double.infinity,
      width: double.infinity,
    );
  }
}

class ColorBackgroundMobail extends StatelessWidget {
  const ColorBackgroundMobail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffFFDD2C).withOpacity(.5),

      ),
      height: double.infinity,
      width: double.infinity,
    );
  }
}