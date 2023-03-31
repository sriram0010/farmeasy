import 'package:flutter/material.dart';
import 'colors.dart' as color;
import 'det.dart';
import 'homepage.dart';
class detail extends StatelessWidget {
  const detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(top:70,left:30,right:30),

         child: Column(
           children: [
             Row(
               children: [
                 IconButton(
                     onPressed:(){
                       Navigator.pop(
                           context,
                           MaterialPageRoute(builder : (context) => HomePage(),) );
                     },
                     icon:Icon(Icons.arrow_back,size:32),
                     )

               ],

             ),
             SizedBox(width:20),

             Row(
               children: [
                 SizedBox(height:50),
                 Text(

           "Crop details",
           style: TextStyle(
             fontSize:23,
             color:color.AppColor.hpt,
           ),
                 ),
                 Expanded(child:Container()),
                 IconButton(
                     onPressed:(){
                       Navigator.push(
                           context,
                           MaterialPageRoute(builder : (context) => det(),) );
                     },
                     icon:Icon(Icons.navigate_next,size:33),
                     )

               ],
             ),
         SizedBox(height:10),
         Row(
          children: [Container(
            width:(MediaQuery.of(context).size.width)-60 ,
            height: 160,
            decoration: BoxDecoration(

                color:color.AppColor.g1,
                borderRadius: const BorderRadius.only(
                    topLeft:Radius.circular(20),
                    bottomLeft:Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20)
                ),
                image: DecorationImage(
                  //scale: double.parse(info[a]["scale"]),
                  alignment: Alignment(-1,0),
                  image: AssetImage(
                      "photo/r1.png"
                  ),
                ),
                gradient : LinearGradient(
                    colors: [
                      color.AppColor.g2.withOpacity(0.9),
                      color.AppColor.g1.withOpacity(0.9),
                      //color.AppColor.g3.withOpacity(1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.topRight
                ),
                boxShadow:  [
                  BoxShadow(
                    offset: Offset(5,7),
                    blurRadius:3,
                    color:color.AppColor.g1.withOpacity(0.6),
                  )
                ]

            ) ,
              child: Container(
                padding: const EdgeInsets.only(left:170,),
            child:Column(
             crossAxisAlignment: CrossAxisAlignment.start,
               children:[
                SizedBox(height:10),
               Text(
                 "   RICE",style: TextStyle(
                   fontSize:20,
                   color: Colors.white
               ),
               ),
                 SizedBox(height:20),

               Text(
                 "Optimum (°C): 30-32",style: TextStyle(
                   fontSize:15,
                   color: color.AppColor.hpt)
               ),
                 Text(
                     "Rainfall : 1000-4500",style: TextStyle(
                     fontSize:15,
                     color: color.AppColor.hpt)
                 ),
                 Text(
                     "(mm)",style: TextStyle(
                     fontSize:13,
                     color: color.AppColor.hpt)
                 ),
               ]

            ),)

          )]

          ),
             SizedBox(height: 20,),
             Row(
                 children: [Container(
                     width:(MediaQuery.of(context).size.width)-60 ,
                     height: 160,
                     decoration: BoxDecoration(

                         color:color.AppColor.g1,
                         borderRadius: const BorderRadius.only(
                             topLeft:Radius.circular(20),
                             bottomLeft:Radius.circular(20),
                             bottomRight: Radius.circular(20),
                             topRight: Radius.circular(20)
                         ),
                         image: DecorationImage(
                           //scale: double.parse(info[a]["scale"]),
                           alignment: Alignment(-1,0),
                           image: AssetImage(
                               "photo/r2.png"
                           ),
                         ),
                         gradient : LinearGradient(
                             colors: [
                               color.AppColor.g2.withOpacity(0.5),
                               color.AppColor.g1.withOpacity(0.9),
                               //color.AppColor.g3.withOpacity(1),
                             ],
                             begin: Alignment.centerLeft,
                             end: Alignment.topRight
                         ),
                         boxShadow:  [
                           BoxShadow(
                             offset: Offset(5,7),
                             blurRadius:3,
                             color:color.AppColor.g1.withOpacity(0.6),
                           )
                         ]

                     ) ,
                     child: Container(
                       padding: const EdgeInsets.only(left:170,),
                       child:Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                             SizedBox(height:20),
                             Text(
                               "   Maize",style: TextStyle(
                                 fontSize:20,
                                 color: Colors.white
                             ),
                             ),
                             SizedBox(height:20),


                             Text(
                                 "Optimum (°C): 21-32",style: TextStyle(
                                 fontSize:15,
                                 color: color.AppColor.hpt)
                             ),
                             Text(
                                 "Rainfall : 500-750",style: TextStyle(
                                 fontSize:15,
                                 color: color.AppColor.hpt)
                             ),
                             Text(
                                 "(mm)",style: TextStyle(
                                 fontSize:13,
                                 color: color.AppColor.hpt)
                             ),
                           ]

                       ),)

                 )]

             ),
             SizedBox(height: 20,),
             Row(
                 children: [Container(
                     width:(MediaQuery.of(context).size.width)-60 ,
                     height: 160,
                     decoration: BoxDecoration(

                         color:color.AppColor.g1,
                         borderRadius: const BorderRadius.only(
                             topLeft:Radius.circular(20),
                             bottomLeft:Radius.circular(20),
                             bottomRight: Radius.circular(20),
                             topRight: Radius.circular(20)
                         ),
                         image: DecorationImage(
                           scale: double.parse('2'),
                           alignment: Alignment(-1,0),
                           image: AssetImage(
                               "photo/r3.png"
                           ),
                         ),
                         gradient : LinearGradient(
                             colors: [
                               color.AppColor.g2.withOpacity(0.5),
                               color.AppColor.g1.withOpacity(0.9),
                               //color.AppColor.g3.withOpacity(1),
                             ],
                             begin: Alignment.centerLeft,
                             end: Alignment.topRight
                         ),
                         boxShadow:  [
                           BoxShadow(
                             offset: Offset(5,7),
                             blurRadius:3,
                             color:color.AppColor.g1.withOpacity(0.6),
                           )
                         ]

                     ) ,
                     child: Container(
                       padding: const EdgeInsets.only(left:170,),
                       child:Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children:[
                             SizedBox(height:20),
                             Text(
                               "   Wheat",style: TextStyle(
                                 fontSize:20,
                                 color: Colors.white
                             ),
                             ),
                             SizedBox(height:20),

                             Text(
                                 "Optimum (°C): 20-25",style: TextStyle(
                                 fontSize:15,
                                 color: color.AppColor.hpt)
                             ),
                             Text(
                                 "Rainfall : 600-900",style: TextStyle(
                                 fontSize:15,
                                 color: color.AppColor.hpt)
                             ),
                             Text(
                                 "(mm)",style: TextStyle(
                                 fontSize:13,
                                 color: color.AppColor.hpt)
                             ),
                           ]

                       ),)

                 )]

             ),
                ],)
        )
    );

  }
}
