import 'package:admin_matbkh24/helper/constans.dart';
import 'package:admin_matbkh24/helper/responsive.dart';
import 'package:admin_matbkh24/ui/login_page/componts/box_chat.dart';
import 'package:admin_matbkh24/ui/navigation_page/navigation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'componts/body_login.dart';
import 'componts/form_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = "LoginScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
          mobile: LoginMobile(),
          tablet: Container(
            color: Colors.red,
          ),
          desktop: BodyLogin()),
    );
  }
}

class LoginMobile extends StatefulWidget {


  @override
  State<LoginMobile> createState() => _LoginMobileState();
}

class _LoginMobileState extends State<LoginMobile> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  const [
            HeaderLoginMobile(),
            FormLogin(),
            SizedBox(
                height: 400,
                width: double.infinity,
                child: BoxChat())
          ],
        ),
      ),
    );
  }


}
class HeaderLoginMobile extends StatelessWidget {
  const HeaderLoginMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
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
        const Text(
          'انت هنا لانك احد افراد فريق مطبخ 24 بامكانك الدخول بالبيانات التي قدمت لك وقت التسجيل . لديك الصلاحية في التحكم في بيانات التطبيق . حظا موفقا',
          style: TextStyle(
            fontFamily: 'home',
            fontSize: 18,
            color: Color(0x94242021),
            height: 1.375,
          ),
          textHeightBehavior:
          TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}