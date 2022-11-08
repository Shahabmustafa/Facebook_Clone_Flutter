import 'package:facebook_clone/Screen/create_account.dart';
import 'package:facebook_clone/Utls/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/facebook.jpeg',width: 400.0,fit: BoxFit.contain,),
              const SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Phone or email',
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appColors.TextButtonColor,
                      ),
                        onPressed: (){},
                        child: const Text('Log in')
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    TextButton(onPressed: (){}, child: Text('Forgot Password?',))
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                   const Center(child: Text('⎯⎯⎯⎯⎯⎯⎯⎯  OR ⎯⎯⎯⎯⎯⎯⎯⎯')),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: appColors.createNewAccountColor,
                      ),
                        onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAccountPage()));
                        },
                        child: const Text('CREATE NEW FACEBOOK ACCOUNT'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
