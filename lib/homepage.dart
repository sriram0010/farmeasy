import 'dart:convert';
//import 'dart:js';

import 'package:farmday/soil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:farmday/temp.dart';
import 'abc.dart';
import 'colors.dart' as color;
import 'crop.dart';
import 'detail.dart';
import 'details.dart';
import 'message.dart';
import 'mois.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
int index=0;
class _HomePageState extends State<HomePage> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/scratch.json").then((value){
     info=json.decode(value);
  });}

  @override

  void initState(){
    super.initState();
    _initData();
  }
  int _selectedIndex=0;
  static final List<Widget> _widgetOptions =<Widget>[
   const Text("Home"),
   const Text("Discussion"),
   const Text("Profile")
  ];
 void next(){

        MaterialPageRoute(builder : (context) => message(),);
  }
  Widget _getBody(int index){
   switch(index){
     case 1:
       print("ok");
       return message();
   }
   return message();
  }
  void _on(int index){
    setState((){
      if(index ==1){
        _getBody(index);

      }
      _selectedIndex=index;
    });
    /*_selectedIcons=index;
    print('${_selectedIcons}');*/
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //body: _getBody(index),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: _on,
        elevation:10,
        //showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: const Color(0xFF526458),

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), activeIcon:Icon(Icons.home_filled), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.forum_outlined),activeIcon:Icon(Icons.forum_rounded),label:"Discussion"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin_circle_outlined),activeIcon:Icon(Icons.person_pin),label:"profile"),


        ],

      ),


         body: Container(

                 padding: const EdgeInsets.only(left:30,top:80,right:30),
                child: Column(
                   children:[

                     Row(
                       children: [
                         Icon(Icons.menu,size: 32,),
                       ],
                     ),
                     const SizedBox(height:20,),
                        Row(
                          children:[
                          Text(
                          "FARMDAILY!",
                           style: TextStyle(
                            fontSize:25,
                             color:color.AppColor.hpt,
      ),
      ),]),
                     const SizedBox(height:20,),
                     Row(
                       children: [
                         Container(
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
                               alignment: Alignment(1,1),
                               image: AssetImage(
                                  "photo/look.png"
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
                         padding: const EdgeInsets.only(left:20,top:25,),
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                               children:[

                               Text(
                               "Welcome to FARMDAILY!",
                               style: TextStyle(
                               fontSize:15,
                               color: color.AppColor.hpt
                               )
                               ),
                               SizedBox(height:45,),
                               Text(
                               "E-FARMING APP.",
                               style: TextStyle(
                               fontSize:14,
                               color: color.AppColor.hpt
                               )
                               ),
                                 SizedBox(height:5,),
                                 Text(
                                     "AGRICULTURE TO YOUR FINGERTIPS",
                                     style: TextStyle(
                                         fontSize:14,
                                         color: color.AppColor.hpt
                                     )
                                 )
                       ],
                     )

      )
                               )]

                   ),
                     const SizedBox(height:30,),
                     Row(
                         children:[
                           Text(
                             "Control Parameters",
                             style: TextStyle(
                               fontSize:23,
                               color:color.AppColor.hpt,
                             ),
                           ),]),
                 Expanded(child: OverflowBox(
                 maxWidth: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: (info.length.toDouble()/2).toInt(),
                    itemBuilder:(_,i){
                      int a= 2*i;
                      int b=(2*i)+1;
                      return Row(
                        children: [
                        Container(
                          width:(MediaQuery.of(context).size.width-90)/2,
                          height: 100,
                          margin: const EdgeInsets.only(left:30,bottom:15,),
                          padding: EdgeInsets.only(bottom:10),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15),

                              image : DecorationImage(
                             scale: double.parse(info[a]["scale"]),
                             alignment: Alignment(0,-0.5),
                              image: AssetImage(
                                  info[a]['img']
                                ),

                           ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius:3,
                                offset: Offset(5,5),
                                color: Colors.black.withOpacity(0.1)
                              ),

                              BoxShadow(
                                  blurRadius:3,
                                  offset: Offset(-5,-5),
                                  color: Colors.black.withOpacity(0.1)
                              )
                            ]
                          ),
                          child: Center(
                            child:Align(
                             // alignment: Alignment.bottomCenter,
                                alignment: Alignment(0.4,1.5),

                              child:TextButton(
                                onPressed:(){
                                  //tempp(a);
                                  if(a==0){
                                 Navigator.push(
                                  context,
                                  MaterialPageRoute(builder : (context) => temp(),) );}

                                  if(a==2){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder : (context) => detail(),) );}
                                },
                                child: Text(
                                info[a]['title'],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black
                                )
                                ),
                              )
                            )
                          )
                        ),

                          Container(
                              width:(MediaQuery.of(context).size.width-90)/2,
                              height: 100,
                              margin: const EdgeInsets.only(left:30,bottom:15,),
                              padding: EdgeInsets.only(bottom:10),
                              decoration: BoxDecoration(
                                  color:Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    scale: double.parse(info[b]["scale"]),
                                    alignment: Alignment(0,-0.5),
                                    image: AssetImage(
                                        info[b]['img']
                                    ),

                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius:3,
                                        offset: Offset(5,5),
                                        color: Colors.black.withOpacity(0.1)
                                    ),

                                    BoxShadow(
                                        blurRadius:3,
                                        offset: Offset(-5,-5),
                                        color: Colors.black.withOpacity(0.1)
                                    )
                                  ]
                              ),
                              child: Center(
                                  child:Align(
                                      alignment: Alignment(0.2,1.5),
                                       child:TextButton(
                                          onPressed:(){
                      //tempp(a);
                                        if(b==1){
                                           Navigator.push(
                                                 context,
                                          MaterialPageRoute(builder : (context) => soil(),) );}

                                        if(b==3){
                                            Navigator.push(
                                                     context,
                                                MaterialPageRoute(builder : (context) => mois(),) );}
                                              },
                                      child:Text(
                                          info[b]['title'],
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black
                                          )
                                      )
                                  )
                              )
                          ),
                          )]
                      );
                  }
                  ),
                )


                ),

                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [

                       IconButton(
                         onPressed:(){

                           Navigator.push(
                               context,
                               MaterialPageRoute(builder : (context) => message(),) );
                         },
                         icon:Icon(Icons.keyboard_arrow_up_rounded,size:33,),
                       )
                     ],
                   )])
         /*backgroundColor: color.AppColor.hpbg,
         body: Container(
          // padding: const EdgeInsets.only(left :10),
           child: Column(
             children:[
             Row(
               children: [
              Container(
                width:MediaQuery.of(context).size.width ,
               height: 160,
               decoration: BoxDecoration(
                 color:color.AppColor.g1,
                   borderRadius: const BorderRadius.only(
                     //topLeft:Radius.circular(30),
                     bottomLeft:Radius.circular(30),
                       bottomRight: Radius.circular(30  ),
                       //topRight: Radius.circular(30)
                   )),
                  child:Container(
                            padding: const EdgeInsets.only(left:30,top:90,),
                        child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                           Text(

                      "FARMDAY.",
                        style: TextStyle(
                        fontSize:20,
                        color:color.AppColor.hpt,
               ),
             ),]),),),
      ]),
                     const SizedBox(height:40,),
               Row(
                  children :[

                    Container(
                       // padding: const EdgeInsets.only(left:20,),
                   width:MediaQuery.of(context).size.width,
                   height: 100,
                   decoration: BoxDecoration(
                       borderRadius:  const BorderRadius.only(
                         //topLeft:Radius.circular(30),
                         //bottomLeft:Radius.circular(185),
                           bottomRight: Radius.circular(30  ),
                           topRight: Radius.circular(30)
                       ),
                     gradient : LinearGradient(
                         colors: [
                             color.AppColor.g1.withOpacity(0.9),
                             color.AppColor.g2.withOpacity(0.9),
                             //color.AppColor.g3.withOpacity(1),
                           ],
                         begin: Alignment.topLeft,
                         end: Alignment.centerRight
                     ),
                       boxShadow:  [
                         BoxShadow(
                           offset: Offset(5,7),
                           blurRadius:3,
                           color:color.AppColor.g3.withOpacity(0.7),
                         )
                       ]
                       ),
                        child: Container(
                            padding: const EdgeInsets.only(left:20,top:20,),
                     child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children:[

                       Text(
                         "Welcome to FARMDAY!",
                         style: TextStyle(
                           fontSize:15,
                           color: color.AppColor.hpcon
                         )
                       ),
                       SizedBox(height:20,),
                       Text(
                           "Your All in One Smart Farm App",
                           style: TextStyle(
                               fontSize:18,
                               color: color.AppColor.hpcon
                           )
                       )
                     ])
                   )
                               ),
      ],)]

      )),*/));



  }
    }
    /*
void tempp(int a){

  if(a==0){
  MaterialPageRoute(builder : (context) => temp(),) ;
   /* Widget build(BuildContext context) {
      return MaterialApp(
      home:temp()
      );
  }*/
    //return temp();
    print("ok");
    /*MaterialPageRoute(builder: (context){
      return temp();
    });*/
    /*Navigator.push(context, MaterialPageRoute(builder: (context){
      return temp();
    }));*/
  }

}*/
