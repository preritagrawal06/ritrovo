import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';


void main() => runApp(const MaterialApp(
  home: SignIn(),
));

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
          child: CircleAvatar(
            radius: 15.0,
            backgroundImage: AssetImage('assets/images/Ellipse 3.png'),
          ),
        ),
        title: const Text(
            'Login',
          style: TextStyle(
            fontSize: 23.0,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 100.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                      child: Text(
                          'Sign In',
                        style: TextStyle(
                          fontSize: 37.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        'Username/Email',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Username',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                            'Forgot Password?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            letterSpacing: 0.2,
                          ),
                        )
                    ),
                    FloatingActionButton(
                        onPressed: (){},
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(Icons.arrow_forward, color: Colors.white,),
                      ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30.0),
                        child: Row(
                          children: [
                            const Text(
                                'New User?',
                              style: TextStyle(
                                fontSize: 15.0
                              ),
                            ),
                            TextButton(
                                onPressed: (){},
                                child: const Text(
                                    'Sign Up',
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 15.0,
                                  ),
                                )
                            )
                          ],
                        ),
                    ),

                  ],
                ),
              ),
            ),
            WaveWidget(
                config: CustomConfig(
                  colors: [Colors.blue],
                  heightPercentages: [0.05],
                  durations: [0],

                ),
                size: const Size(double.infinity, 106)
            )
          ],
        ),
      ),
    );
  }
}


