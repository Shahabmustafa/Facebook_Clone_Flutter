import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('images/onboarding.jpeg',width: 400.0,fit: BoxFit.fill,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget> [
                Center(child: const Text('Join Facebook',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: appColors.BlackColor),)),
                const SizedBox(
                  height: 20.0,
                ),
                Text('We well help you create a new account in a few easy steps',textAlign: TextAlign.center,),
                const SizedBox(
                  height: 40.0,
                ),
                ElevatedButton(
                    onPressed: (){}, 
                    child: const Text('Next')
                ),
              ],
            ),
            Column(
              children: [
                TextButton(onPressed: (){}, child: Text('Already have an account?'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
