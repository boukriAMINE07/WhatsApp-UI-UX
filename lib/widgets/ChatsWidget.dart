import 'package:flutter/material.dart';
import 'dart:math';

class ChatsWidget extends StatelessWidget {
   var random = new Random();
  int min=1;
   ChatsWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5
        ),
        child: Column(children: [
          for(int i=1;i<11;i++)
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, "ChatPage");
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset("images/profile$i.jpg" , width: 65,height: 65,),

                      ),
                      Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Programmer $i ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                          SizedBox( height: 8,),
                          Text(
                            "Hi, Programmer, how are you? ",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                            ),
                          ),

                        ],
                      ),
                      ),
                  Spacer(),
                  Column(
                    children: [
                      Text(
                        "${random.nextInt(24)}:${random.nextInt(60)}",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF0FCE5E),
                          fontWeight: FontWeight.w500

                        ),
                      ),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color:  Color(0xFF0FCE5E),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text(
                          "${min+random.nextInt(3)}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 16
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),


          )
        ],),


      ),


    );
  }
}
