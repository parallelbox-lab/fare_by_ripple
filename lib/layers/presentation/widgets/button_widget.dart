import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key,  this.press,this.color,this.textColor, this.isLoading = false, this.ui}) : super(key: key);
  //final String? text;
  final Function? press;
  final Color? color;
  final Color? textColor;
  final bool? isLoading;
  final Widget? ui;
  @override
  Widget build(BuildContext context) {
    return Container(
       // margin: const EdgeInsets.only(bottom: 5.0),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
       //   border: Border.all(width: 1, color: kPrimaryColor),
          borderRadius: BorderRadius.circular(7.0)
        ),
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0)),
              foregroundColor: Colors.white,
              backgroundColor: color ?? Colors.black,
            ),
            onPressed: press as void Function()?,
            child: ui!
            ));
  }
  
}
