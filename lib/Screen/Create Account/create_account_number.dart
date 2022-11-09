import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

class createAccountNumber extends StatefulWidget {
  const createAccountNumber({Key? key}) : super(key: key);

  @override
  State<createAccountNumber> createState() => _createAccountNumberState();
}

class _createAccountNumberState extends State<createAccountNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.AppbarColor,
        title: Text('Mobile Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('Enter your mobile number',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20.0),),
                SizedBox(
                  height: 20.0,
                ),
                Text('Enter the mobile number where you can be reached.You can hide this form your profile late.',textAlign: TextAlign.center,),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    label: Text('Mobile Number'),
                    hintText: 'Mobile Number'
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appColors.TextButtonColor,
                    ),
                    onPressed: (){}, child: Text('Next'))
              ],
            ),
            Column(
              children: [
                TextButton(onPressed: (){}, child: Text('Sign up with email address'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
