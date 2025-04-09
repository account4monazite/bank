import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_panel_bank/Introo/intro_pg1.dart';
import 'package:user_panel_bank/Introo/intro_pg2.dart';
import 'package:user_panel_bank/Introo/intro_pg3.dart';
import 'package:user_panel_bank/veiws/home.dart';

class intro_screen extends StatefulWidget {
  const intro_screen({super.key});
 
  @override
  State<intro_screen> createState() => _intro_screenState();
}

class _intro_screenState extends State<intro_screen> {
  PageController pg_controller=PageController();
  bool Count=false;
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      body:Stack(
        children: [PageView(
          controller: pg_controller,
          onPageChanged: (index){
            setState(() {
Count=(index==2);
            },);
            

          },
          children: [
            IntroPg1(),
            IntroPg2(),
            IntroPg3()
          ],
        ),
        Container(
          alignment: Alignment(0, 0.9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  pg_controller.jumpToPage(2);
                },
                child: Text('Skip')),
              SmoothPageIndicator(controller: pg_controller, count: 3),
               (Count)?
            GestureDetector(
                 onTap: (){
                  Get.offAll(Home());
                },
              child: Text('Let\'s Go')):
               GestureDetector(
                 onTap: (){
                  pg_controller.nextPage(duration: Duration(milliseconds: 500 ), curve: Curves.easeIn);
                },
              child: Text('next'))

            ],
          )),
        ],
      )
      
    );
  }
}