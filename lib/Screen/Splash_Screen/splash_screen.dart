import 'package:flutter/material.dart';
import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        Column(
          children: [
            Center(child: Image.asset('images/download.png',width: 150,height: 150,)),
            // SpinKitThreeInOut(
            //
            //   color: Colors.black,
            //   size: 20.0,
            // ),
          ],
        ),
          Column(
            children: [
              const Text('from',style: TextStyle(fontSize: 18,),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/meta.png',height: 30.0,width: 30.0,),
                  const SizedBox(
                    width: 3.0,
                  ),
                  const Text("Meta",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: appColors.BlackColor),)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
