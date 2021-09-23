import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'list_home.dart';

class ExpandLists extends StatelessWidget {
  const ExpandLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TitleLists(title:"مهام بانتظارك"),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children:   const [
                        Text(
                          'وجبات بانتظار الموافقة عليها',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 13,
                            color: Color(0xff242021),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        ListHome(name: "اسم الوجبة",provider: "المقدم")
                      ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'طلبات بانتظار الموافقة عليها',
                          style: TextStyle(
                            fontFamily: 'home',
                            fontSize: 13,
                            color: Color(0xff242021),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        ListHome(name: "الاسم",provider: "نوع الطلب",)
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class TitleLists extends StatelessWidget {
final String title;

TitleLists({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        const Expanded(
            child: Divider(
              height: 1,
            )),
        const SizedBox(
          width: 30,
        ),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'home',
            fontSize: 13,
            color: Color(0xff242021),
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}