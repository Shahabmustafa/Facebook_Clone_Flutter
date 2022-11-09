import 'package:facebook_clone/Screen/Create%20Account/create_account_number.dart';
import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

class createAccountBirthday extends StatefulWidget {
  const createAccountBirthday({Key? key}) : super(key: key);

  @override
  State<createAccountBirthday> createState() => _createAccountBirthdayState();
}

class _createAccountBirthdayState extends State<createAccountBirthday> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.TextButtonColor,
        title: Text('Birthday'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text('What is your gender?',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20.0),),
                SizedBox(
                  height: 30.0,
                ),
                Text('You can change who seens your gender on your profile later.',textAlign: TextAlign.center,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Female',style: TextStyle(fontWeight: FontWeight.w900),),
                       Radio(
                           value: 'male',
                           groupValue: '',
                           onChanged: (value){
                             print(value);
                           }),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Male',style: TextStyle(fontWeight: FontWeight.w900),),
                       Radio(
                           value: 'male',
                           groupValue: '',
                           onChanged: (value){
                             print(value);
                           }),
                     ],
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Custom',style: TextStyle(fontWeight: FontWeight.w900)),
                       Radio(
                           value: 'male',
                           groupValue: '',
                           onChanged: (value){
                             print(value);
                           }),
                     ],
                   ),
                   const Padding(
                     padding: EdgeInsets.only(right: 20.0),
                     child: Text('Select Custom to choose another gender, or if you`d rather not say.',style: TextStyle(color: appColors.BlackColor),),
                   ),
                   const SizedBox(
                     height: 50.0,
                   ),
                   ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: appColors.TextButtonColor,
                       ),
                       onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => createAccountNumber()));
                       }, child: Text('Next'))
                 ],
               ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
