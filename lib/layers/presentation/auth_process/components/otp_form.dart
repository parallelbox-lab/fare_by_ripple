import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/constants.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
    bool _pin1 = false;
  bool _pin2 = false;
  bool _pin3 = false;
  bool _pin4 = false;
  bool _pin5 = false;
  bool _pin6 = false;

  final TextEditingController _pin1Controller = TextEditingController();
  final TextEditingController _pin2Controller = TextEditingController();
  final TextEditingController _pin3Controller = TextEditingController();
  final TextEditingController _pin4Controller = TextEditingController();
  final TextEditingController _pin5Controller = TextEditingController();
  final TextEditingController _pin6Controller = TextEditingController();

  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 50.0,right: 50.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            autofocus: true,
            controller: _pin1Controller,
            obscureText: false,
          // style: otpStyles,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value, pin2FocusNode);
              value = _pin1Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin1 = true;
                  } else {
                    _pin1 = false;
                  }
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            focusNode: pin2FocusNode,
            obscureText: false,
            controller: _pin2Controller,
          //  style: otpStyles,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value, pin3FocusNode);
              value = _pin2Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin2 = true;
                  } else {
                    _pin2 = false;
                  }
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            focusNode: pin3FocusNode,
            controller: _pin3Controller,
            obscureText: false,
            //style: otpStyles,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value, pin4FocusNode);
              value = _pin3Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin3 = true;
                  } else {
                    _pin3 = false;
                  }
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
          ],
          focusNode: pin4FocusNode,
            controller: _pin4Controller,
            obscureText: false,
          // style: otpStyles,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value, pin5FocusNode);
              value = _pin4Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin4 = true;
                  } else {
                    _pin4 = false;
                  }
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            focusNode: pin5FocusNode,
            controller: _pin5Controller,
            obscureText: false,
          // style: otpStyles,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              nextField(value, pin6FocusNode);
              value = _pin1Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin5 = true;
                  } else {
                    _pin5 = false;
                  }
                },
              );
            },
          ),
        ),
        SizedBox(
          width: 35,
          height: 40,
          child: TextFormField(
          inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            focusNode: pin6FocusNode,
            controller: _pin6Controller,
            obscureText: false,
          //  style: otpStyles,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            onChanged: (value) {
              if (value.length == 1) {
                pin4FocusNode!.unfocus();
                // Then you need to check is the code is correct or not
              }
              value = _pin6Controller.text;
              setState(
                () {
                  if (value.isNotEmpty) {
                    _pin6 = true;
                  } else {
                    _pin6 = false;
                  }
                },
              );
            },
          ),
        ),
      ]),
    ) ;
  }
}