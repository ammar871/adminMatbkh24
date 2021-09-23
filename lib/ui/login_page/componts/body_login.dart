
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'box_chat.dart';
import 'form_login.dart';


class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 25,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
     shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(30)
     ),
      child: Row(
        children: [
          Expanded(
              child: SingleChildScrollView(
                child: Column(
            children: const [HeaderLogin(),
                FormLogin()],
          ),
              )),
          const BoxChat()
        ],
      ),
    );
  }
}



class HeaderLogin extends StatelessWidget {
  const HeaderLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        SvgPicture.asset(
          "assets/icons/MainLogo.svg",
          width: 70,
          height: 70,
        ),
        const Text(
          'مرحبا بك في مطبخ 24',
          style: TextStyle(
            fontFamily: 'home',
            fontSize: 25,
            color: Color(0xff242021),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          width: 500,
          child: Text(
            'انت هنا لانك احد افراد فريق مطبخ 24 بامكانك الدخول بالبيانات التي قدمت لك وقت التسجيل . لديك الصلاحية في التحكم في بيانات التطبيق . حظا موفقا',
            style: TextStyle(
              fontFamily: 'home',
              fontSize: 12,
              color: Color(0x94242021),
              height: 1.375,
            ),
            textHeightBehavior:
                TextHeightBehavior(applyHeightToFirstAscent: false),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
