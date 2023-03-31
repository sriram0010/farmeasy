import 'dart:convert';
import 'package:farmday/soil.dart';
import 'package:farmday/temp.dart';
import 'package:flutter/cupertino.dart';

import 'colors.dart' as color;

import 'package:flutter/material.dart';

import 'crop.dart';
import 'mois.dart';
class details extends StatefulWidget {
  const details({Key? key}) : super(key: key);

  @override
  State<details> createState() => _detailsState();
}
int index=0;
class _detailsState extends State<details> {
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/details.json").then((value){
      info=json.decode(value);
    });}

  @override

  void initState(){
    super.initState();
    _initData();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(



      body: Container(
         // color: Colors.white,

          padding: const EdgeInsets.only(left:30,top:80,right:30),
          child: Column(
              children:[
                Row(
                  children: [
                    Icon(Icons.arrow_back_outlined,size: 32,),
                  ],
                ),

                Row(
                    children:[
                      Text(
                        "Crop deatils",
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
                                            "r1.png"
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
                                                    MaterialPageRoute(builder : (context) => crop(),) );}
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

                )])

      ),
    );


  }
}


