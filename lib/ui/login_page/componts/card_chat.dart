import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardChat extends StatelessWidget {
  const CardChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Card(
        color: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 150,
                alignment: Alignment.center,
                child: const Text(
                  'ياهلا و مرحبا',
                  style: TextStyle(
                    fontFamily: 'home',
                    fontSize: 18,
                    color: Color(0xff00bf78),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Text(
                'حياك الله لاي مساعدة كلمني',
                style: TextStyle(
                  fontFamily: 'home',
                  fontSize: 15,
                  color: Color(0xffffbc6e),
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  SizedBox(
                    width: 150,
                    child: Text(
                      'خدمة التواصل مع المدير العام للمساعدة اضغط هنا',
                      maxLines: null,
                      style: TextStyle(
                        fontFamily: 'home',
                        fontSize: 15,
                        color: Color(0xff2e4765),
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}