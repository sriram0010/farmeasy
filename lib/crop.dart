import 'package:farmday/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class crop extends StatefulWidget {
  // const temp({Key? key}) : super(key: key);

  @override
  State<crop> createState() => _cropState();
}

class _cropState extends State<crop> {
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
                                  "Crop Promoter",
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
                    color:Colors.white
                ))
              ]
          ),
        ));
  }
}
