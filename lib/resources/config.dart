import 'package:flutter/material.dart';

const Color primaryColor = Color(0xfffc5656);
const Color black = Colors.black45;
const Color white = Colors.white;
const Color grey = Colors.grey;



List <BoardingModel>boarding = [
  BoardingModel(
      image: 'assets/images/tip3.png',
      title: 'Live Tracking',
      body: 'Real Time Tracking OF Your Food\n ON The App After ordered'
  ),
  BoardingModel(
      image: 'assets/images/tip2.png',
      title: 'Live Tracking',
      body: 'Real Time Tracking OF Your Food\n ON The App After ordered'
  ),
  BoardingModel(
      image: 'assets/images/tip1.png',
      title: 'Live Tracking',
      body: 'Real Time Tracking OF Your Food\n ON The App After ordered'
  ),

];
Widget buildBoardingitem (BoardingModel Model)=>Column(
  children: [
    Expanded(
        flex: 2,
        child: Container(
          decoration:  BoxDecoration(
              image: DecorationImage(
                  image:AssetImage(Model.image),
                  fit: BoxFit.contain

              )
          ),
        )),
    Expanded(
        flex: 1,
        child: Container(
      child: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(Model.title,style:
              TextStyle(
                color: primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                Model.body,style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    ))



  ],
);
class BoardingModel{
  final String title;
  final String image;
  final String body;

  BoardingModel({
    required this.title,
    required this.image,
    required this.body
  });
}

////////////////////////////////////////////////////////////////
//Widget TextForm Field

Widget textFormField(
    {
      required String name,
      required IconData icon,
      required TextEditingController edit,
      IconData? iconData,
      required TextInputType type,
      required Function function,
      required Color backgroundColor,
      double? heigth,
      required Color textColor
    })=>   Container(
      height: heigth,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25.0)
      ),
      child: TextFormField(
        controller: edit,
        decoration:   InputDecoration(
            hintText: name,
            border: InputBorder.none,
            suffixIcon:Icon(
              icon,
              color: black,
            ) ,
            prefixIcon: Icon(iconData),
            hintStyle:  TextStyle(
                fontSize: 20,
                color: textColor

            )

        ) ,
        validator: (value){
          return function(value);
        },
        keyboardType:type,


      ),
    );

// Widget Button
Widget customButton({
  required String title,
  double? height,
  required Function function,
  required TextAlign align,
  IconData? iconData,
  required Color backgroundColor,
  required Color textColor


})=> Align(
alignment: AlignmentDirectional.center,
child: GestureDetector(
onTap: (){
   function();
},
child: Container(
height: height,
width: double.infinity,
decoration: BoxDecoration(
color: backgroundColor,
borderRadius: BorderRadiusDirectional.circular(20.0)
),
child:  Center(
child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(iconData,color: black,),
        Text(
    title,style:  TextStyle(
    color:textColor ,
    fontSize: 25,

    fontWeight: FontWeight.bold

    ),

    textAlign: align,

    ),
  ],
),
),
),
),
);
//Widget Text
Widget customText({
   required String title,
  required Color color,
  required double size,
  TextAlign? align
})=> Text(title,style: TextStyle(color: color,fontSize: size,fontWeight: FontWeight.bold),);
var searchcontroller = TextEditingController();
var emailController=TextEditingController();
var passwordController=TextEditingController();
var nameController=TextEditingController();
var phoneController=TextEditingController();
var emailcontrollerre=TextEditingController();
var passwordcontrollerre=TextEditingController();
var emailcontrollerpass=TextEditingController();
var formKey3 = GlobalKey<FormState>();

