import 'package:fare_by_ripple/layers/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class SocialMediaButton extends StatefulWidget {
  final Widget? icon;
  final String? text;
  final Function? press;
  final Color? backgroundColor;
  final Color? textColor;
  const SocialMediaButton({Key? key,this.icon, this.text, this.press, this.backgroundColor, this.textColor}) : super(key: key);

  @override
  State<SocialMediaButton> createState() => _SocialMediaButtonState();
}

class _SocialMediaButtonState extends State<SocialMediaButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
            // margin: const EdgeInsets.only(bottom: 5.0),
            //  width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.079,
              width: MediaQuery.of(context).size.width * 0.55,
              decoration: BoxDecoration(
               border: Border.all(width: 1, color: Colors.black),
               borderRadius: BorderRadius.circular(35.0)
              ),
            child:TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  foregroundColor: Colors.white,
                  backgroundColor:widget.backgroundColor ??  Colors.black,
                ),
                onPressed: widget.press as void Function()?,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.icon ?? Container(),
                    const SizedBox(width: 5,),
                    CustomText(text: widget.text,color: widget.textColor ?? Colors.white,size: MediaQuery.of(context).size.width * 0.032,),
                  ],
                )
                ),
             );        
  }
}