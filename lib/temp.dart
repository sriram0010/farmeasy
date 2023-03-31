import 'package:farmday/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class temp extends StatefulWidget {
 // const temp({Key? key}) : super(key: key);

  @override
  State<temp> createState() => _tempState();
}
String x='25°C';
int a=0;

class _tempState extends State<temp> {
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
        padding: const EdgeInsets.only(top:70,left:30,right:30),
            width: MediaQuery.of(context).size.width,
            height : 300,
                 child:Column(
                    children: [
                   Row(
                     children:[

                       IconButton(
                           onPressed:(){
                             next();
                             a++;
                             Navigator.pop(
                                 context,
                                 MaterialPageRoute(builder : (context) => HomePage(),) );
                           },
                         icon:Icon(Icons.arrow_back,size:30),
                       color:color.AppColor.hpcon)
                     ],
                   ),
                    //  const SizedBox,
                      const SizedBox(height:20,),
                      Row(
                          children:[

                            Text(
                              "Temperature",
                              style: TextStyle(
                                fontSize:25,
                                color:color.AppColor.hpt,
                              ),
                            ),]),
                      const SizedBox(height:20,),

                 ]
               )

        ),
                   Expanded(child: Container(
                       padding: const EdgeInsets.only(left:40,),
                     color:Colors.white,
                     child: Row(
                     children:[

                     Container(
                     width:100 ,
                       height: 160,

                       decoration: BoxDecoration(
                           color:Colors.white,

                           image: DecorationImage(
                               scale: double.parse("1"),
                             image: AssetImage(
                                 "photo/left.png"
                             ),
                           ),)),
                     //  const SizedBox(width:30,),
                     Container(
                       child: Center(
                       child: TextButton(
                         onPressed:(){
                         //  x='37';

                             x="25°C";

                         },
                         child:Text(
                       x, //33,35
                       style: TextStyle(
                         fontSize:40,
                         color:color.AppColor.hpt,
                       ),
                   ),
                     ),)),



                       //const SizedBox(width:30,),
                       Container(
                           width:100 ,
                           height: 160,
                           decoration: BoxDecoration(
                             color:Colors.white,

                             image: DecorationImage(
                               scale: double.parse("1.5"),
                               image: AssetImage(
                                   "photo/right.png"
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
next(){
 // Future.delayed(Duration(seconds:2),(){
    x="26°C";
    if(a==2){
      x="26°C";
    }
    if(a==3){
      x="25°C";
    }
    if(a==4){
      x="26°C";
    }
    print("ok");
 // });
}
