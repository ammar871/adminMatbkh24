import 'package:admin_matbkh24/helper/constans.dart';
import 'package:flutter/cupertino.dart';

import 'custom_drop_down_widget.dart';

class ListHome extends StatelessWidget {
final String name,provider;

const ListHome({required this.name, required this.provider});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 7,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          if (index == 0) {
            return ItemListFirstIndex(name:name,provider:provider);
          } else {
            return const ItemListOrders();
          }
        });
  }
}

class ItemListFirstIndex extends StatelessWidget {
  final String name,provider;


  ItemListFirstIndex({required this.name, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 2),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: const Color(0xb5e1e1e1),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'القرار',
                      style: TextStyle(
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
              child: Container(
                  width: double.infinity,
                  child:  SizedBox(
                    width: double.infinity,
                    child: Text(
                      provider,
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
              child: Container(
                  width: double.infinity,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text(
                      'التاريخ',
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 10,
                        color: Color(0xff242021),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ))),
          Expanded(
              flex: 3,
              child: SizedBox(
                  width: double.infinity,
                  child:  SizedBox(
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
              flex: 1,
              child: Container(
                width: double.infinity,
                child: const SizedBox(
                  width: double.infinity,
                  child: Text(
                    'الرقم',
                    style: TextStyle(
                      fontFamily: 'home',
                      fontSize: 10,
                      color: Color(0xff242021),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class ItemListOrders extends StatelessWidget {
  const ItemListOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 1),
      width: double.infinity,
      decoration:  const BoxDecoration(
          border: Border(bottom: BorderSide(color: textColor, width: .5))),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: CustomDropDownWidget(
                list: const ["مفعل", "معلق"],
                hint: 'معلق',
                onSelect: (value) {},
              )),
          const Expanded(
              flex: 2,
              child: SizedBox(
                  width: double.infinity,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'مقدم خدمة',
                      style: TextStyle(
                        fontFamily: "home",
                        fontSize: 10,
                        color:  Color(0xff242021),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ))),
          const Expanded(
              flex: 2,
              child: SizedBox(
                  width: double.infinity,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      '10-08-2021',
                      style: TextStyle(
                        fontFamily: "home",
                        fontSize: 10,
                        color:  Color(0xff242021),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ))),
          const Expanded(
              flex: 3,
              child: SizedBox(
                  width: double.infinity,
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'فهد ناصر الحجي',
                      style: TextStyle(
                        fontFamily: "home",
                        fontSize: 10,
                        color: Color(0xff242021),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ))),
          const Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    '01',
                    style: TextStyle(
                      fontFamily: "home",
                      fontSize: 10,
                      color:  Color(0xff242021),
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
