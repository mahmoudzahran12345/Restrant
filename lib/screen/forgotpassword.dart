import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/config.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final formKey4 = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading:IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios,color: Colors.black,)) ,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(alignment: AlignmentDirectional.topStart, child: customText(title: 'Forgot Password', color: primaryColor, size: 30)),
              const SizedBox(height: 20,),
              Align(alignment: AlignmentDirectional.topStart, child: customText(title: 'please enter your email to receive a link\nto create a new password via email.', color: black, size: 18)),
              const SizedBox(height: 50.0,),
              textFormField(name: 'Email', icon: Icons.email_outlined, edit: emailcontrollerre, type: TextInputType.text, function: (value){if(value!.isEmpty){return 'please enter name';}return null;},textColor: black, backgroundColor: white),
              const SizedBox(height: 40.0,),
              customButton(title: 'send',align: TextAlign.center,function: (){},backgroundColor: primaryColor,textColor: white,height: 48),
            ],
          ),

        ),
      ),
    );
  }
}
