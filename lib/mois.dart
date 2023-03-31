import 'package:farmday/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class mois extends StatefulWidget {
  // const temp({Key? key}) : super(key: key);

  @override
  State<mois> createState() => _moisState();
}


class _moisState extends State<mois> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    color.AppColor.g2.withOpacity(0.8),
                    color.AppColor.g3
                  ]
              )
          ),
          child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 70, left: 30, right: 30),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 300,
                    child: Column(
                        children: [
                          Row(
                            children: [

                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => HomePage(),));
                                  },
                                  icon: Icon(Icons.arrow_back, size: 30),
                                  color: color.AppColor.hpcon)
                            ],
                          ),
                          //  const SizedBox,
                          const SizedBox(height: 20,),
                          Row(
                              children: [

                                Text(
                                  " SOIL MOISTURE",

                                  style: TextStyle(
                                    fontSize: 30,
                                    color: color.AppColor.hpt,
                                  ),
                                ),
                                const SizedBox(height: 20, width: 70,),

                              ]),
                          const SizedBox(height: 20,),

                        ]
                    )

                ),
                Expanded(child: Container(
                    height: 10,width: 300,
                    padding: const EdgeInsets.only(left: 20,),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),),
                    //color:Colors.white,
                    child: Column(
                        children: [


                          const SizedBox(height: 100, width: 110,),
                          Text(
                            "994",//1011
                            style: TextStyle(
                              fontSize: 40,
                              color: color.AppColor.hpt,
                            ),
                          ),
                          const SizedBox(height: 10,),

                          Text(
                            "MOISTURE LEVEL",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.hpt,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                              width: 90,
                              height: 120,

                              decoration: BoxDecoration(


                                image: DecorationImage(
                                  scale: double.parse("0.5"),
                                  image: AssetImage(
                                      "photo/s1.png"
                                  ),
                                ),)),


                        ]
                    )
                ))
              ]
          ),
        ));
  }
}