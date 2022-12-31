import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:resturant/resources/widgets.dart';
import 'package:resturant/screen/loginscreen.dart';
import 'package:resturant/screen/registerscreen.dart';

import '../resources/config.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  State<Tips> createState() => _TipsState();
}

class _TipsState extends State<Tips> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: (){
                        navigatto(context, const LoginScreen());
                      },
                        child: const Text('Login',style: TextStyle(color: primaryColor,fontSize: 25,fontWeight: FontWeight.bold),))),
                Expanded(
                    flex: 4,
                    child: PageIndicatorContainer(
                      shape: IndicatorShape.circle(),
                      align: IndicatorAlign.bottom,
                      indicatorColor: grey,
                      indicatorSelectorColor: primaryColor,
                      length:boarding.length ,
                      child:
                      PageView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                         scrollDirection: Axis.horizontal,
                          itemCount: boarding.length,
                          itemBuilder: (context,index)=>buildBoardingitem(boarding[index]),)
                      ,)
                ),
                customButton(title: 'Create Account',align: TextAlign.center,function: (){navigatto(context, const RegisterScreen());},backgroundColor: primaryColor,textColor: white,height: 50.0),
                const SizedBox(height: 20.0,),
                customButton(title: 'Continue with facebook',align: TextAlign.center,function: (){},iconData: Icons.facebook,backgroundColor: Colors.grey.shade200,textColor: black,height: 50.0)




              ],
            ),
          ),
        )
    );
  }
}
