import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_task_figma/pages/home_pae.dart';
class SplashPage extends StatefulWidget {
  static const id = "/splash_page";
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  _initTimer(){
    Timer(const Duration(seconds: 3),(){
      Navigator.pushNamed(context, HomePage.id);
    });
  }

  @override
  initState(){
    super.initState();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      appBar: AppBar(
        title: const Text("My Tasks",style: TextStyle(color: Colors.white,fontSize: 22, fontWeight: FontWeight.w700 ),),
        backgroundColor: Colors.green.shade900,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const Center(
            child: Image(
              image: AssetImage("assets/images/img.png"),
            ),
          ),
          const SizedBox(height: 50,),
          const Image(
            image: AssetImage("assets/images/img_3.png"),
          ),
          const SizedBox(height: 100,),
          const Image(
            image: AssetImage("assets/images/img_4.png"),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.12,),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Good",style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w800),),
                Text("Consistancy",style: TextStyle(color: Colors.white,  fontSize: 20, fontWeight: FontWeight.w800),),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        focusColor: Colors.transparent,
        disabledElevation: 0,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c) {
            return const HomePage();
          }));
        },
        child: Image.asset("assets/images/img_1.png"),
      ),
    );
  }
}
