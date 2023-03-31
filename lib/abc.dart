import 'dart:convert';

import 'package:flutter/material.dart';
class abc extends StatefulWidget {
 // const abc({Key? key}) : super(key: key);

  @override
  State<abc> createState() => _abcState();
  String _value='';
 /* void _change(String value) {
    setState(() {
      _value = value;
    });
  }*/


  late String message = "";
  final controller = TextEditingController() ;
}
int index=0;
class _abcState extends State<abc> {
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

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child:Column(
        children:[
      Expanded(child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: (info.length.toDouble()).toInt(),
            itemBuilder:(_,i){
              int a= i;
             // int b=(2*i)+1;
              return Row(
                  children: [
                    Container(
                        width:60,
                        height: 50,
                        margin: const EdgeInsets.only(left:30,bottom:15,),
                        padding: EdgeInsets.only(bottom:10),
                        decoration: BoxDecoration(
                            color:Colors.redAccent,
                            borderRadius: BorderRadius.circular(15),


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



                                  child: Text(
                                      info[a]['title'],
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black
                                      )
                                  ),

                            )
                        )
                    ),

                    ]
              );
            }
        ),
      )
      ),
          TextFormField(
          //  controller: controller,
            decoration: const InputDecoration(
                hintText: 'Enter',hintStyle: TextStyle(color: Colors.grey),filled: true,contentPadding: EdgeInsets.all(15)
            ),
           // onChanged: (val) => message = val ,

          ) ,
          ElevatedButton(
            onPressed: (){


              Widget messageWidget ;
            },
            child: const Text("update") ,
          )]


      ),)
    );
  }
}
