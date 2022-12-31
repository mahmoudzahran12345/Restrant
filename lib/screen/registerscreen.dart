import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/resources/config.dart';

import '../resources/widgets.dart';
import 'loginscreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

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
             key: formKey,
            child: Column(

              children: [
               Align(alignment: AlignmentDirectional.topStart, child: customText(title: 'Create your\naccount', color: primaryColor, size: 25)),
               const SizedBox(height: 40.0,),
               textFormField(name: 'username', icon: Icons.person, edit: emailController, type: TextInputType.emailAddress, function: (value){if(value!.isEmpty){return 'please enter email';}return null;},textColor: black, backgroundColor: white),
               const SizedBox(height: 20.0,),
                textFormField(name: 'Email', icon: Icons.email_outlined, edit: nameController, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter name';}return null;},textColor: black, backgroundColor: white),
                const SizedBox(height: 20.0,),
                textFormField(name: 'Password', icon: Icons.lock, edit: passwordController, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter password';}return null;},textColor: black, backgroundColor: white),
                const SizedBox(height: 20.0,),
                textFormField(name: 'phone', icon: Icons.phone_android, edit: phoneController, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter phone';}return null;},textColor: black, backgroundColor: white),
                const SizedBox(height: 20.0,),
                customButton(title: 'Log in',align: TextAlign.center,function: (){navigatto(context, const LoginScreen());},backgroundColor: primaryColor,textColor: white,height: 48),
                const SizedBox(height: 20.0,),
                Align(alignment: AlignmentDirectional.center, child: customText(title: 'By Clicking Sign Up uo agree to The Our\n Terms and Conditions', color: black, size: 15)),
                const SizedBox(height: 140.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(alignment: AlignmentDirectional.center, child: customText(title: 'Already an account?', color: black, size: 20)),
                    InkWell(
                        onTap: (){
                          navigatto(context, const LoginScreen());
                        },
                        child: Align(alignment: AlignmentDirectional.center, child: customText(title: 'Login', color: primaryColor, size: 20))),

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
