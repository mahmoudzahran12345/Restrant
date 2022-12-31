import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resturant/resources/config.dart';
import 'package:resturant/screen/tips.dart';

import '../resources/widgets.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:AssetImage("assets/images/male2.jpg"),
                      fit: BoxFit.contain

                    )
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadiusDirectional.circular(25.0),
                    boxShadow:[ BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0,3),
                    )
                ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        const Text(
                          'Happy Meals',style: TextStyle(
                          fontSize: 25,
                          color: white,
                          fontWeight: FontWeight.bold
                        ),

                        ),
                        const SizedBox(height: 10,),
                        const Text(
                          'Discover the best foods from over 1,000 restaurants',style: TextStyle(
                            fontSize: 17,
                            color: white,
                            fontWeight: FontWeight.bold
                        ),

                        ),
                        const Spacer(),
                        Align(
                          alignment: AlignmentDirectional.bottomStart,
                          child: GestureDetector(
                            onTap: (){
                              navigatto(context,const Tips());
                            },
                            child: Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadiusDirectional.circular(20.0)
                              ),
                              child: const Center(
                                child: Text(
                                  'Get Start',style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ))
          ],
        ),
      )
    );
  }
}
