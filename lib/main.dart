import 'package:flutter/material.dart';
import 'package:travel_pro/app_style.dart';
import 'size_config.dart';
import 'size_config.dart';

void main(){
  runApp(
    const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: HomeScreen(),
      ),
    );

  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: ListView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      children: [
        Row(
          children: [
            Container(
              width: 51,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: kBlue,
                image: DecorationImage(
                    image: NetworkImage('https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector.png')
                ),
              ),
            ),
            const SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Wellcome Back!",style:kPoppinsBold.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal!*4,
                ),),
                Text("Monday, 3 October",
                  style:kPoppinsRegular.copyWith(
                    color: kGrey,
                  fontSize: SizeConfig.blockSizeHorizontal!*3,
                ),),
              ],
            ),
            const SizedBox(height: 30,),
            Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(kBorderRadius),
               color: kWhite,
               boxShadow: [
                 BoxShadow(
                   color: kDarkBlue.withOpacity(0.051),
                   offset: const Offset(0.0,3.0),
                   blurRadius: 24.0,
                   spreadRadius: 0.0
                 )
               ]
             ),
            )
          ],
        )
      ],
    ));
  }
}

