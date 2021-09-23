import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropDownWidget extends StatefulWidget {
  final List<String> list;
  final Function onSelect;
  final String hint;

  const CustomDropDownWidget(
      {required this.list, required this.onSelect, required this.hint});

  @override
  _CustomDroopDownWidgetState createState() => _CustomDroopDownWidgetState();
}

class _CustomDroopDownWidgetState extends State<CustomDropDownWidget> {
  String? currentValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 19,
        child: Container(
          margin: const EdgeInsets.only(left: 15),
          padding: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: const Color(0xffffca08),
            border: Border.all(width: 1.0, color: const Color(0xffde9e00)),
          ),
          child: Center(
            child: Stack(
              children: [
                const Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    child: Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: Colors.white,
                      size: 20,
                    )),
                SizedBox(

                  child: DropdownButton<String>(
                      dropdownColor: const Color(0xffffca08),
                      isExpanded: true,
                      hint: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(widget.hint,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontFamily: 'home',
                                fontSize: 8,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      style: const TextStyle(
                        fontFamily: 'home',
                        fontSize: 8,
                        color: Colors.white,
                      ),
                      value: currentValue,
                      icon: SizedBox(),
                      iconSize: 30,
                      underline: SizedBox(),
                      onChanged: (value) {
                        setState(() {
                          currentValue = value;
                        });

                        widget.onSelect(value!);
                      },
                      items: widget.list
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                value,
                                style: const TextStyle(color: Colors.white),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        );
                      }).toList()),
                ),
              ],
            ),
          ),
        ));
  }
}
