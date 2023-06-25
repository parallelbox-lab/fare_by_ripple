import 'package:fare_by_ripple/layers/presentation/widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../choose_auth_method/auth_method.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);
  static String routeName = '/get-started';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment:Alignment.center,
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment:Alignment.topLeft,
            child: Container(
               height: MediaQuery.of(context).size.height * 0.30,
                width: MediaQuery.of(context).size.width,
                decoration:const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/icons/path.png'))
                ),
              child:const Text('')
            ),
          ),
            
           Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/icons/arrow_down.png",width: MediaQuery.of(context).size.width / 3.5,)),
              // const SizedBox(height: 7,),
              Image.asset("assets/icons/fare_logo.png",width: MediaQuery.of(context).size.width * 0.31,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/icons/arrow_up.png",width: MediaQuery.of(context).size.width / 2.8,)),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                 Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.40,
                      width: MediaQuery.of(context).size.width,
                      decoration:const BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/icons/arrow_bottom.png'))
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                        // margin: const EdgeInsets.only(bottom: 5.0),
                        //  width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.079,
                          width: MediaQuery.of(context).size.width * 0.55,
                          margin:const EdgeInsets.only(bottom: 40),
                          decoration:const BoxDecoration(
                        //   border: Border.all(width: 1, color: kPrimaryColor),
                           // borderRadius: BorderRadius.circular(35.0)
                          ),
                          child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0)),
                          foregroundColor: Colors.white,
                          backgroundColor:  Colors.black,
                        ),
                        onPressed: ()=> Navigator.pushNamed(context, AuthMethod.routeName),
                        child:const CustomText(text: "Get Started",)
                        )),
                      ),
                    ),
                    //SizedBox(height: 40,),
                   //Image.asset("assets/icons/arrow_bottom.png"),
                  ],
                ),
                ],
            ),


             
           

        ],
      ),

    );
  }
}