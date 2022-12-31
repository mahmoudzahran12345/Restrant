import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/screen/forgotpassword.dart';
import 'package:resturant/screen/registerscreen.dart';

import '../resources/config.dart';
import '../resources/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey2 = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)) ,

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey2,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(alignment: AlignmentDirectional.topStart, child: customText(title: 'Log in to Your\naccount', color: primaryColor, size: 25)),
                const SizedBox(height: 80.0,),
                textFormField(name: 'Email', icon: Icons.email_outlined, edit: emailcontrollerre, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter name';}return null;},textColor: black, backgroundColor: white,),
                const SizedBox(height: 20.0,),
                textFormField(name: 'Password', icon: Icons.lock, edit: passwordcontrollerre, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter password';}return null;},textColor: black, backgroundColor: white),
                const SizedBox(height: 20.0,),

                InkWell(
                    onTap: (){
                      navigatto(context, const ForgotPassword());
                    },
                    child: Align(alignment: AlignmentDirectional.bottomEnd, child: customText(title: 'forgot password ?', color: black, size: 20))),
                const SizedBox(height: 40.0,),
                customButton(title: 'Log in',align: TextAlign.center,function: (){},backgroundColor: primaryColor,textColor: white,height: 48),
                const SizedBox(height: 180.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(alignment: AlignmentDirectional.center, child: customText(title: 'Dont have account?', color: black, size: 20)),
                    InkWell(
                        onTap: (){
                          navigatto(context, const RegisterScreen());
                        },
                        child: Align(alignment: AlignmentDirectional.center, child: customText(title: '\tSignUp', color: primaryColor, size: 20))),

                  ],
                )






              ],
            ),

          ),
        ),
      ),
    );
  }
}
