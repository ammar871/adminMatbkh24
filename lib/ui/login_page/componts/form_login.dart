import 'package:admin_matbkh24/helper/constans.dart';
import 'package:admin_matbkh24/helper/responsive.dart';

import 'package:admin_matbkh24/ui/navigation_page/navigation_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({
    Key? key,
  }) : super(key: key);

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              buildTextFieldName("اسم الدخول"),
              const SizedBox(
                height: 20,
              ),
              buildTextFieldName("كلمة المرور"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildContainerButton(),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'تذكرني',
                        style: TextStyle(
                          fontFamily: 'home',
                          fontSize: 15,
                          color: Color(0x91242021),
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
         Responsive.isDesktop(context)? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Last time log : 10-08-2021   |  IP :  192.168.2.100',
                style: TextStyle(
                  fontFamily: 'home',
                  fontSize: 13,
                  color: Color(0x91242021),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ):const Text(
           'Last time log : 10-08-2021   |  IP :  192.168.2.100',
           style: TextStyle(
             fontFamily: 'home',
             fontSize: 12,
             color: Color(0x91242021),
           ),
           textAlign: TextAlign.left,
         ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return homeColor;
    }
    return textColor;
  }

  MaterialButton buildContainerButton() {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: const Color(0xffffca08),
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
      onPressed: () {
        Navigator.of(context).pushNamed(NavigationScreen.id);
      },
      child: const Text(
        'دخول',
        style: TextStyle(
          fontFamily: 'home',
          fontSize: 18,
          color: Color(0xffffffff),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Card buildTextFieldName(String? hint) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: TextFormField(
        onSaved: (newValue) => newValue!,
        keyboardType: TextInputType.phone,
        onChanged: (value) {
          setState(() {
            //  phone = value;
          });
          return;
        },
        validator: (value) {
          return null;
        },
        textAlign: TextAlign.right,
        style:
            const TextStyle(fontFamily: "home", fontSize: 12, color: textColor),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
