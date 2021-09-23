import 'package:admin_matbkh24/helper/constans.dart';
import 'package:admin_matbkh24/ui/acceot_orders_page/accept_orders_screen.dart';
import 'package:admin_matbkh24/ui/accept_meals_page/accept_meals_screen.dart';
import 'package:admin_matbkh24/ui/home_page/componts/details_account.dart';
import 'package:admin_matbkh24/ui/home_page/home_screen.dart';
import 'package:admin_matbkh24/ui/users_page/users_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoyNavigation extends StatefulWidget {
  const BoyNavigation({Key? key}) : super(key: key);

  @override
  State<BoyNavigation> createState() => _BoyNavigationState();
}

class _BoyNavigationState extends State<BoyNavigation> {
  int currentIndex=0;
  List<Widget>screens=[
    const HomeScreen(),
    const AcceptOrdersScreen(),
    AcceptMealsScreen(),
    const UsersScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [

          Expanded(
            flex: 5,
            child:Column(
              children: [
                SizedBox(height: 30,),
                const DetailsAccount(),
                Expanded(
                  child: IndexedStack(
                    index: currentIndex,
                    children: screens,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                  color: homeColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    "assets/icons/logouncolor.svg",
                    width: 70,
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: (){
                              setState(() {
                                currentIndex=0;
                              });
                            },

                            child: ItemSide(icon: "assets/icons/home.svg",text: "الرئيسية",)),
                       const SizedBox(height: 1,),
                        InkWell
                          (

                            onTap: (){
                              setState(() {
                                currentIndex=1;
                              });
                            },
                            child: ItemSide(icon: "assets/icons/note.svg",text: "قبول طلبات التحويل",)),
                        const SizedBox(height: 1,),
                        InkWell(


                          onTap: (){
                            setState(() {
                              currentIndex=2;
                            });
                          },
                            child: ItemSide(icon: "assets/icons/meal.svg",text: "قبول الوجبات الجديدة",)),
                        const SizedBox(height: 1,),
                        InkWell
                          (
                          onTap: (){
                            setState(() {
                              currentIndex=3;
                            });
                          },

                            child: ItemSide(icon: "assets/icons/users.svg",text: "المشتركين",)),
                        const SizedBox(height:1,),
                        ItemSide(icon: "assets/icons/proivider.svg",text: "مقدمي الخدمة",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/mandop.svg",text: "المناديب",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/setting.svg",text: "الاعدادات",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/my_file.svg",text: "الملف الشخصي",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/massegs.svg",text: "الشكوى",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/massege2.svg",text: "الرسائل",),
                        const SizedBox(height: 1,),
                        ItemSide(icon: "assets/icons/walet.svg",text: "قسم الحسابات",),
                        const SizedBox(height: 1,)

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:  [
                        const Text(
                          'اليوم هو',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 11,
                            color: Color(0xff464646),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text(
                              '15:06',
                              style: TextStyle(
                                fontFamily: 'home',
                                fontSize: 12,
                                color: Color(0xff464646),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.right,
                            )
                            ,
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              '10-08-2021',
                              style: TextStyle(
                                fontFamily: 'home',
                                fontSize: 12,
                                color: Color(0xff464646),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.right,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              'الثلاثاء',
                              style: TextStyle(
                                fontFamily: 'home',
                                fontSize: 12,
                                color: Color(0xff464646),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        )

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemSide extends StatelessWidget {
  final String icon ,text;


  ItemSide({required this.icon, required this.text});



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         Text(
          text,
          style: const TextStyle(
            fontFamily: 'home',
            fontSize: 15,
            color: Color(0xcc464646),
          ),
          textAlign: TextAlign.right,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          icon,
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
