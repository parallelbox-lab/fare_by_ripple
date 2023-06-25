import 'package:fare_by_ripple/core/utils/app_colors.dart';
import 'package:fare_by_ripple/layers/presentation/auth_process/components/otp_form.dart';
import 'package:fare_by_ripple/layers/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({Key? key}) : super(key: key);
    static String routeName = '/otp-view';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(child: CustomText(text: 'Enter OTP', weight: FontWeight.w500,size: size.width * 0.051,color: Colors.black,)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:12.0, right: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: CustomText(text: 'A 6-digit OTP has been sent to 08012345678',textAlign: TextAlign.center,size: size.width * 0.037,color:const Color(0xFF6D6E6F))),
            SizedBox(height: size.height * 0.020,),
            const OtpForm(),
            SizedBox(height: size.height * 0.060,),
            CustomText(text: 'Didn’t get an OTP?',weight: FontWeight.w500, textAlign: TextAlign.center,size: size.width * 0.035,color:const Color(0xFF6D6E6F),),
            SizedBox(height: size.height * 0.015,),
            Container(
            // margin: const EdgeInsets.only(bottom: 5.0),
            //  width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.069,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
               border: Border.all(width: 1, color: Colors.black),
               borderRadius: BorderRadius.circular(35.0)
              ),
            child:TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'Request a new one',color:Colors.white,size: MediaQuery.of(context).size.width * 0.032,),
                  ],
                )
                ),
             )



           
          ],
        ),
      ),
    );
  }
}