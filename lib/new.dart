import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Color(0xFF087949).withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Icon(Icons.mic, color: kPrimaryColor),
            SizedBox(width: kDefaultPadding),
            Expanded(
              child: Container(
                width:70,height: 30,
                padding: const EdgeInsets.only(left:30,top:80,),
                decoration: BoxDecoration(

                  //color: kPrimaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                    children:[
                      Text(
                        "Enter your message",
                        style: TextStyle(
                          fontSize:25,
                          color:Colors.black,
                        ),
                      ),]),
                /*child: Row(
                  children: [
                    SizedBox(height: 60,),


                    SizedBox(width: 30),
                    /*Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),*/
                    Icon(
                      Icons.attach_file,
                      color: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .color!
                          .withOpacity(0.64),
                    ),
                    SizedBox(width: kDefaultPadding / 4),

                  ],
                ),*/
              ),
            ),
          ],
        ),
      ),
    );
  }
}