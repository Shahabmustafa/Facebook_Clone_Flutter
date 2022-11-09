import 'package:facebook_clone/Screen/Create%20Account/create_account_birthday.dart';
import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

class createAccountName extends StatefulWidget {
  const createAccountName({Key? key}) : super(key: key);

  @override
  State<createAccountName> createState() => _createAccountNameState();
}

class _createAccountNameState extends State<createAccountName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appColors.TextButtonColor,
        title: Text('Name'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:  [
                   Center(child: Text('What is your name?',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20.0),)),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Center(child: Text('Enter the name you use in real life')),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: const [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('First Name'),
                              hintText: 'First Name'
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              label: Text('Last Name'),
                              hintText: 'Last Name'
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appColors.TextButtonColor,
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => createAccountBirthday()));
                  }, child: Text('Next'))
                ],
              ),
            ),
            Text(''),
          ],
        ),
    );
  }
}
