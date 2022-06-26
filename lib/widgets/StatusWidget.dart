import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical:12 ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.asset(
                        "images/status1.jpg",
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,),

                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "My Status",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                       SizedBox( height: 8,),
                        Text(
                          "Today, 21:45 pm",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            color: Colors.black54
                          ),
                        ),

                      ],
                    )
                    ,),
                  Spacer(),
                  Container(
                    child: Icon(Icons.more_vert,color:  Color(0xFF075E55)),
                  )
                ],

              ),
            ),

            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Updates",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            for(int i=1;i<3;i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                   padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.green,width: 3)
                  ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(45),
                      child: Image.asset(
                        "images/status$i.jpg",
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,),

                    ),



                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          "Programmer $i",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox( height: 8,),
                        Text(
                          "Today, 01:25 pm",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          ),
                        ),

                      ],
                    )
                    ,),
                ],
              ),
            )
            ,     SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Viewed Updates",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            for(int i=3;i<5;i++)
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey,width: 3)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(45),
                        child: Image.asset(
                          "images/status$i.jpg",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,),

                      ),



                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Programmer $i",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox( height: 8,),
                          Text(
                            "Yesterday, 10:00 pm",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54
                            ),
                          ),

                        ],
                      )
                      ,),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
