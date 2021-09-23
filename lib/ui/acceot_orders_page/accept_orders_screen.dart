import 'package:admin_matbkh24/helper/constans.dart';
import 'package:admin_matbkh24/ui/home_page/componts/custom_drop_down_widget.dart';
import 'package:admin_matbkh24/ui/home_page/componts/expand_lists.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AcceptOrdersScreen extends StatefulWidget {
  const AcceptOrdersScreen({Key? key}) : super(key: key);

  @override
  State<AcceptOrdersScreen> createState() => _AcceptOrdersScreenState();
}

class _AcceptOrdersScreenState extends State<AcceptOrdersScreen> {
  ScrollController scrollController = new ScrollController();
  ScrollController scrollController2 = new ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {});
    scrollController2.addListener(() {});
  }

  List<String> list = ["1", "2", "3", "4", "5", "6"];
  String current_index= "1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController2,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 50),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TitleLists(title: "قبول طلبات التحويل"),
                  const SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                      itemCount: 50,
                      controller: scrollController,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (_, index) {
                        if (index == 0) {
                          return ItemListOrdersFirstIndex(
                            name: "الاسم",
                            isFound: true,
                            number: "الرقم",
                            numberOrder: "رقم الطلب",
                            type: "نوع الطلب",
                            date: "التاريخ ",
                          );
                        } else {
                          return ItemListOrdersPage(
                            name: "فهد ناصر الحجي",
                            isFound: false,
                            number: "01",
                            numberOrder: "25963",
                            type: "مقدم خدمة",
                            date: "10-08-2021 ",
                          );
                        }
                      })
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 35,
                margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: containerColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: list
                          .map((e) => InkWell(
                        onTap: (){
                          setState(() {
                            current_index=e;
                          });
                        },
                            child: Container(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5,left: 8,right: 8),
                                  margin: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    color:current_index==e?blackColor :const Color(0xffe1e1e1),
                                  ),
                                  child: Text(
                                    e,
                                    style: const TextStyle(
                                      fontFamily: 'home',
                                      fontSize: 12,
                                      color: Color(0xffffffff),
                                    ),
                                    textAlign: TextAlign.right,
                                  ),
                                ),
                          ))
                          .toList(),
                    ),
                    Row(
                      children: const [
                        Text(
                          '  تعليق المحدد',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 12,
                            color: Color(0xff242021),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          ' رفض المحدد',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 12,
                            color: Color(0xff242021),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'حذف المحدد',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 12,
                            color: Color(0xff242021),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'قبول المحدد',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 12,
                            color: Color(0xff242021),
                          ),
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class ItemListOrdersFirstIndex extends StatelessWidget {
  final String name, number, numberOrder, type, date;
  final bool isFound;

  ItemListOrdersFirstIndex(
      {required this.name,
      required this.date,
      required this.number,
      required this.numberOrder,
      required this.type,
      required this.isFound});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: const Color(0xb5e1e1e1)),
      child: Row(
        children: [
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(
                  width: 100,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'القرار',
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                  width: 100,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      " التفاصيل",
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                  width: 100,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'تحميل',
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ))
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      type,
                      style: const TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          date,
                          style: const TextStyle(
                            fontFamily: 'home',
                            fontSize: 10,
                            color: Color(0xff242021),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ))),
              Expanded(
                  flex: 3,
                  child: SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontFamily: 'home',
                            fontSize: 10,
                            color: Color(0xff242021),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ))),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          numberOrder,
                          style: const TextStyle(
                            fontFamily: 'home',
                            fontSize: 10,
                            color: Color(0xff242021),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ))),
              Expanded(
                  flex: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            number,
                            style: const TextStyle(
                              fontFamily: 'home',
                              fontSize: 10,
                              color: Color(0xff242021),
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 17.0,
                            height: 17.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xffe9e9e9),
                              border: Border.all(
                                  width: 1.0, color: const Color(0xff989898)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ))
        ],
      ),
    );
  }
}

class ItemListOrdersPage extends StatelessWidget {
  final String name, number, numberOrder, type, date;
  final bool isFound;

  ItemListOrdersPage(
      {required this.name,
      required this.date,
      required this.number,
      required this.numberOrder,
      required this.type,
      required this.isFound});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
      width: double.infinity,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: textColor, width: .5))),
      child: Center(
        child: Row(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 100,
                  child: CustomDropDownWidget(
                    list: const ["مفعل", "معلق"],
                    hint: 'معلق',
                    onSelect: (value) {},
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Container(
                    height: 25,
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 6, right: 6, top: 2, bottom: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xff464646),
                    ),
                    child: const Center(
                      child: Text(
                        'عرض الطلب',
                        style: TextStyle(
                          fontFamily: 'home',
                          fontSize: 8,
                          color: Color(0xffffffff),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Center(
                    child: SvgPicture.asset(
                      "assets/icons/download.svg",
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(
                        type,
                        style: const TextStyle(
                          fontFamily: "home",
                          fontSize: 10,
                          color: Color(0xff242021),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: SizedBox(
                        width: double.infinity,
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            date,
                            style: const TextStyle(
                              fontFamily: "home",
                              fontSize: 10,
                              color: Color(0xff242021),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ))),
                Expanded(
                    flex: 3,
                    child: SizedBox(
                        width: double.infinity,
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            name,
                            style: const TextStyle(
                              fontFamily: "home",
                              fontSize: 10,
                              color: Color(0xff242021),
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ))),
                Expanded(
                    flex: 2,
                    child: SizedBox(
                        width: double.infinity,
                        child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            numberOrder,
                            style: const TextStyle(
                              fontFamily: "home",
                              fontSize: 10,
                              color: Color(0xff242021),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ))),
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              number,
                              style: const TextStyle(
                                fontFamily: "home",
                                fontSize: 10,
                                color: Color(0xff242021),
                              ),
                              textAlign: TextAlign.right,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 17.0,
                              height: 17.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff989898)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
