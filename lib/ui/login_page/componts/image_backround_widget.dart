import 'package:flutter/cupertino.dart';

class ImageBackroundWidget extends StatelessWidget {
  const ImageBackroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(30), topRight: Radius.circular(30)),
        child: Image.asset(
          "assets/images/back.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class ImageBackroundWidgetMobile extends StatelessWidget {
  const ImageBackroundWidgetMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: ClipRRect(

        child: Image.asset(
          "assets/images/back.png",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}