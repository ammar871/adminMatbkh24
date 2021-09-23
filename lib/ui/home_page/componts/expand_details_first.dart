import 'package:admin_matbkh24/helper/constans.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'details_account.dart';

class ExpandDetailsFirst extends StatelessWidget {
  const ExpandDetailsFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right:10),
          child: Column(
            children:  [

              const SizedBox(height: 10,),
              const RowCountersCalculat(),
              const SizedBox(height: 5,),
              Row(
                children:  const [

                  SecoundCalculateContainr(color : Color(0xffFECD54),icon: "assets/icons/icon_mandop.svg",title: "المناديب الجدد",
                    date: "اليوم",percentage: "+25%",count: "200",),

                  SizedBox(width: 5,),
                  SecoundCalculateContainr(color : Color(0xffDA4EE9),icon: "assets/icons/icon_order.svg",title: "طلبات مكتملة",
                    date: "اليوم",percentage: "+25%",count: "200",),
                  SizedBox(width: 5,),
                  SecoundCalculateContainr(color : Color(0xff22CE8B),icon: "assets/icons/icon_user.svg",title: "المشتركين الجدد",
                    date: "اليوم",percentage: "+25%",count: "19",),
                  SizedBox(width: 5,),
                  ContainerCalcolatFirst(),

                ],
              )
            ],
          ),
        ));
  }
}


class SecoundCalculateContainr extends StatelessWidget {
  final String icon ,title ,date ,count ,percentage;

  final Color color;

  const SecoundCalculateContainr(
      {required this.color,required this.icon, required this.title, required this.date, required this.count, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(

        padding:const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [


            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children:  [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: color,
                  ),
                  child:  Center(
                    child: Text(
                      percentage,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xffffffff),

                      ),
                      textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),


                Text(
                  count,
                  style: const TextStyle(
                    fontFamily: 'home',
                    fontSize: 35,
                    color: Color(0xff040e28),
                    fontWeight: FontWeight.w700,
                    height: 0.6,
                  ),
                  textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontFamily: 'home',
                    fontSize: 13,
                    color: Color(0xffa6b1c2),
                    height: 1.5,
                  ),
                  textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'home',
                      fontSize: 13,
                      color: Color(0xff040e28),
                      letterSpacing: 0.7000000000000001,
                      height: 1.7142857142857142,
                    ),
                    textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: SvgPicture.asset(
                    icon,
                    width:30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                ),


              ],
            ),
          ],
        ), ),
    );
  }
}

class ContainerCalcolatFirst extends StatelessWidget {
  const ContainerCalcolatFirst({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        padding:const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 5),
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: const Color(0xfffecd54),
                  ),
                  child: const Text(
                    '02 لم تحل',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'home',
                      fontSize: 10,
                      color: Color(0xffffffff),

                    ),
                    textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                    textAlign: TextAlign.right,
                  ),
                ),
                SvgPicture.asset(
                  "assets/icons/icon_sak.svg",
                  width:75,
                  height: 75,
                  fit: BoxFit.fill,
                ),


              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: const [
                Text(
                  'شكاوي حلت',
                  style: TextStyle(
                    fontFamily: 'home',
                    fontSize: 13,
                    color: Color(0xff040e28),
                    letterSpacing: 0.7000000000000001,
                    height: 1.7142857142857142,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                Text(
                  '05',
                  style: TextStyle(
                    fontFamily: 'home',
                    fontSize: 35,
                    color: blueColor,
                    fontWeight: FontWeight.w700,
                    height: 0.6,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
                Text(
                  'اليوم',
                  style: TextStyle(
                    fontFamily: 'Droid Arabic Kufi',
                    fontSize: 13,
                    color: Color(0xffa6b1c2),

                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                )
              ],
            )
          ],
        ), ),
    );
  }
}

class RowCountersCalculat extends StatelessWidget {
  const RowCountersCalculat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        children: const [
          ContainerDetailsCalculate(icon: "assets/icons/shak_count.svg",title: "شكاوي جديدة",count: "5",),
          SizedBox(width: 15,),
          ContainerDetailsCalculate(icon: "assets/icons/mesg_count.svg",title: "رسائل جديدة",count: "22",),
          SizedBox(width: 10,),

          ContainerDetailsCalculate(icon: "assets/icons/drive_count.svg",title: "مندوبين جدد",count: "99",),
          SizedBox(width: 15,),
          ContainerDetailsCalculate(icon: "assets/icons/meal_count.svg",title: "وجبات جديدة",count: "1200",),
          SizedBox(width: 15,),
          ContainerDetailsCalculate(icon: "assets/icons/user_count.svg",title: "مشتركين جدد",count: "244",),
          SizedBox(width: 15,),
          ContainerDetailsCalculate(icon: "assets/icons/not_count.svg",title: "طلبات للموافقة",count: "5",),
          SizedBox(width: 15,),
        ],
      ),
    );
  }
}

class ContainerDetailsCalculate extends StatelessWidget {

  final String icon,title,count;


  const ContainerDetailsCalculate({required this.icon, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          padding:const EdgeInsets.only(left: 10),
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: containerColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    SizedBox(
                      height: 20,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'home',
                          fontSize: 12,
                          color: Color(0xff616161),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(

                      height: 20,
                      child: Text(
                        count,
                        style: const TextStyle(
                          fontFamily: 'home',
                          fontSize: 22,
                          color: Color(0xff242021),
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width:10,),
              SvgPicture.asset(
                icon,
                width:32,
                height: 32,
                fit: BoxFit.fill,
              ),
              const SizedBox(width:10,),
              Container(
                width: 5,
                height: 40,
                decoration: const BoxDecoration(
                  color: greenColor,
                ),
              )
            ],
          ),));
  }
}
