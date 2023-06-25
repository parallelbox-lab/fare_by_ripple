import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

import '../auth_process/otp_view.dart';
import '../widgets/custom_text.dart';
import 'components/social_media_button.dart';

class AuthMethod extends StatelessWidget {
  const AuthMethod({Key? key}) : super(key: key);
    static String routeName = '/auth-method';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: SocialMediaButton(
              icon: Image.asset('assets/icons/google_icon.png', width: 20,),
              text: 'Sign up with Google',
            ),
          ),
          const SizedBox(height: 6,),
          Center(
            child: SocialMediaButton(
              icon: Image.asset('assets/icons/apple_icon.png', width: 20,),
              text: 'Sign up with Apple',
            ),
          ),
          const SizedBox(height: 6,),
          const Center(
            child: SocialMediaButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              text: 'Sign up with email or phone',
            ),
          ),
         SizedBox(height: size.height * 0.02,),        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CustomText(
                textAlign: TextAlign.center,             
                text: 'By signing up, you agreed with our\n Terms of Use and Privacy Policy ',
                size:size.width * 0.033,
              ),
            ),
          ),
        SizedBox(height: size.height * 0.04,),
        Center(child: InkWell(
          onTap: ()=> Navigator.pushNamed(context, OtpView.routeName),
          child: CustomText(text: 'Log in instead',color:const Color(0xFF6D6E6F),size: size.width * 0.035,)),),
        SizedBox(height: size.height * 0.04,),   
        ],
      ),
    );
  }
}