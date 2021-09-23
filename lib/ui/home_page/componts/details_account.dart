import 'package:admin_matbkh24/helper/constans.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsAccount extends StatelessWidget {
  const DetailsAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 60,
                width: 210,
                padding:const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: containerColor,
                ),
                child: Row(

                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [


                        Badge(
                          badgeContent: const Text('3',style: TextStyle(
                              fontSize: 8,
                              color: Colors.white
                          ),),
                          child: SvgPicture.asset(
                            "assets/icons/notiy.svg",
                            width: 25,
                            height: 25,
                          ),
                        ),
                        const SizedBox(width: 15,),
                        const Icon(Icons.more_horiz,size: 25,color: blueColor,),

                      ],
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'خروج',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 16,
                            color: blueColor,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(width: 5,),
                        ImageProfile(),
                      ],
                    )

                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 60,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: containerColor,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    "assets/icons/search.svg",
                    width: 25,
                    height: 25,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('مرحبا : محمد حمدان',
                  style: TextStyle(
                    fontFamily: "home",
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(
                width: 15,
              ),
              SvgPicture.asset(
                "assets/icons/logouncolor.svg",
                width: 70,
                height: 70,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageProfile extends StatelessWidget {
  const ImageProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55 ,
      width: 55,
      child: Stack(

        children: [

          Positioned(
            top: 0,
            right: 0,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/pp.png",
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
          ),


          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.all(
                    Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff7cac21),
                border: Border.all(
                    width: 3.0,
                    color: const Color(0xfff5f5f5)),
              ),
            ),
          )
        ],
      ),
    );
  }
}