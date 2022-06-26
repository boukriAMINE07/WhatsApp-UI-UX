import 'package:flutter/material.dart';
import 'package:whatsapp/pages/HomePage.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55)
        ),
        bottomSheetTheme: BottomSheetThemeData(
              backgroundColor: Colors.black.withOpacity(0)
        )
      ),
      routes: {
        "/":(context)=>HomePage(),
      },
    );
  }
}
