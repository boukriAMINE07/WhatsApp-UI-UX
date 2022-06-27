import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CallsWidget extends StatelessWidget {
  Random random=new Random();
  int min=1;
  CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            for(int i=1;i<5;i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile$i.jpg" ,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Programmer ",
                          style:TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ) ,
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(Icons.call_made,color:  Color(0xFF075E55),size: 19,),
                            SizedBox(width: 5,),
                            Text("(${min+random.nextInt(4)}) Today ${min+random.nextInt(13)}:${min+random.nextInt(60)} ${random.nextInt(11)>5?"am":"pm"}",
                              style: TextStyle(
                              fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    child: Icon(Icons.call_sharp),
                  )


                ],
              ),
            ),
            for(int i=5;i<11;i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile$i.jpg" ,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Programmer ",
                            style:TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ) ,
                          ),
                          SizedBox(height: 8,),
                          Row(
                            children: [
                              Icon(Icons.call_received,color:  Colors.red,size: 19,),
                              SizedBox(width: 5,),
                              Text("(${min+random.nextInt(4)}) Today ${min+random.nextInt(13)}:${min+random.nextInt(60)} ${random.nextInt(11)>5?"am":"pm"}",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),)
                            ],
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      child: Icon(CupertinoIcons.videocam_fill,color:  Color(0xFF075E55),size: 29,),

                    )


                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
