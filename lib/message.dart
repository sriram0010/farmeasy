import 'package:flutter/material.dart';

import 'colors.dart' as color;

class message extends StatefulWidget {
  //const message({Key? key}) : super(key: key);

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {

  @override

int a=0;
  String _value='';
  void _change(String value) {
    setState(() {
      _value = value;
    });
  }

  late String message = "";
  final controller = TextEditingController() ;



  Widget build(BuildContext context) {
    return Scaffold(


      body: Container(
        padding: const EdgeInsets.only(left:30,top:80,right:30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Chat Bot",style: TextStyle(
            fontSize:25,
            color: Colors.black
        ),) ,
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(
                    width:70 ,
                    height: 50,
                    decoration: BoxDecoration(

                        color:Colors.green,
                        borderRadius: const BorderRadius.only(
                            topLeft:Radius.circular(20),
                            bottomLeft:Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                    ) ,
                    child: Container(
                      padding: const EdgeInsets.only(left:10,top:10),
                    //  color: Colors.redAccent,
                      height: 50,
                      width: 50,
                      child: Text("Hello",style: TextStyle(fontSize: 17),),
                    )
                  )],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Container(
                      width:230 ,
                      height: 60,
                      decoration: BoxDecoration(

                        color:Colors.greenAccent,
                        borderRadius: const BorderRadius.only(
                            topLeft:Radius.circular(20),
                            bottomLeft:Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                      ) ,
                      child: Container(
                        padding: const EdgeInsets.only(left:10,top:10),
                        //  color: Colors.redAccent,
                        height: 50,
                        width: 50,
                        child: Text("Has Government introduced any new schemes?",style: TextStyle(fontSize: 15),),
                      )
                  )],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(
                      width:150 ,
                      height: 170,
                      decoration: BoxDecoration(

                        color:Colors.green,
                        borderRadius: const BorderRadius.only(
                            topLeft:Radius.circular(20),
                            bottomLeft:Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                      ) ,
                      child: Container(
                        padding: const EdgeInsets.only(left:10,top:10),
                        //  color: Colors.redAccent,
                        height: 50,
                        width: 50,
                        child: Text("Yes, You can check it out at https://www.tn.gov.in/scheme/department_wise/2 ",style: TextStyle(fontSize: 17),),
                      )
                  )],
                ),
                SizedBox(height: 20,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Container(
                      width:70 ,
                      height: 50,
                      decoration: BoxDecoration(
                        color:Colors.greenAccent,
                        borderRadius: const BorderRadius.only(
                            topLeft:Radius.circular(20),
                            bottomLeft:Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)
                        ),
                      ) ,
                      child: Container(
                        padding: const EdgeInsets.only(left:10,top:10),
                        //  color: Colors.redAccent,
                        height: 50,
                        width: 50,
                        child: Text(message,style: TextStyle(fontSize: 17),),
                      )
                  )],
                ),


              ],
            ),
            SizedBox(height:80),
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: 'Enter',hintStyle: TextStyle(color: Colors.grey),filled: true,contentPadding: EdgeInsets.all(15)
              ),
              onChanged: (val) => message = val ,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (controller) =>  message != null && message.length < 2 ? 'Enter more than three characters.' : null ,
            ) ,
            ElevatedButton(
                onPressed: (){
                  a=1;
                  _change(message) ;
                  Widget messageWidget ;
                },
                child: const Text("ask") ,
            )
          ],
        ),
      ),
      /*
      body:Container(

          padding: const EdgeInsets.only(left:180,top:30,right:30),

        decoration: BoxDecoration(
          color: Colors.white
        ),
            child: Column(

              children: [
           /* Row(
            children: [
            Container(
            /*Row(

            children: [
              Text("Chat Box                                                                                              ",style: TextStyle(
            fontSize:25,
            color: color.AppColor.hpt
            ),)
            ]),*/

            child: Container(
            padding: const EdgeInsets.only(left:150,top:60,right:90),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[

              Text(
                  "ChatBox!",
                  style: TextStyle(
                      fontSize:20,
                      color: color.AppColor.hpt
                  )
              ),])),)]),*/

                SizedBox(height: 60,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.end,

                    children: [

                      Container(
                        //SizedBox(width: 20,),
                        child: Container(
                           // padding: const EdgeInsets.only(left:70,right:90),
                        width:150,
                        height: 40,
                        decoration: BoxDecoration(

                            color:color.AppColor.g1,
                            borderRadius: const BorderRadius.only(
                                topLeft:Radius.circular(20),
                                bottomLeft:Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20)
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
                        child:Column(
                           // crossAxisAlignment: CrossAxisAlignment.center,
                            children:[


                              Text(
                                "PADDY",style: TextStyle(
                                  fontSize:15,
                                  color: color.AppColor.hpt
                              ),
                              )]

                        )
                    ))]
                ),
                SizedBox(height: 30,),
                Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Container(
                        //SizedBox(width: 20,),
                          child: Container(
                            // padding: const EdgeInsets.only(left:70,right:90),
                              width:150,
                              height: 40,
                              decoration: BoxDecoration(

                                  color:color.AppColor.g1,
                                  borderRadius: const BorderRadius.only(
                                      topLeft:Radius.circular(20),
                                      bottomLeft:Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                      topRight: Radius.circular(20)
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
                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[


                                    Text(
                                      "what kind of crop",style: TextStyle(
                                        fontSize:15,
                                        color: color.AppColor.hpt
                                    ),
                                    )]

                              )
                          ))]
                ),
                SizedBox(height:500),
                Row(

                    children: [

                      Container(
                        //SizedBox(width: 20,),
                          child: Container(
                            // padding: const EdgeInsets.only(left:70,right:90),
                              width:40,
                              height: 20,
                              decoration: BoxDecoration(

                                  color:color.AppColor.g1,
                                  borderRadius: const BorderRadius.only(
                                      topLeft:Radius.circular(30),
                                      bottomLeft:Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30)
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
                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[

                               /*     child:TextButton(
                                  onPressed:(){
                    //tempp(a);

                                     Navigator.push(
                                          context,
                                       MaterialPageRoute(builder : (context) => temp(),) );},
                                    Text(
                                      "+",style: TextStyle(
                                        fontSize:15,
                                        color: color.AppColor.hpt
                                    ),
                                    ))
                                  */]

                              )
                          ))]
                ),
              ],

      )
      )

       */
    );


  }

  Widget messageWidget() => Card(
    margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
    child: ListTile(
      leading: CircleAvatar(),
      title: Text('hhh'),
    ),
  ) ;
}