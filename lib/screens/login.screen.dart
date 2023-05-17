import 'package:final_project/Services/firebase_services.dart';
import 'package:final_project/screens/ask.question.screen.dart';
import 'package:final_project/screens/gmail.screen.dart';
import 'package:final_project/screens/recent_questions.dart';
import 'package:final_project/screens/register.screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: [
        SizedBox(
          height: 130,
          width: 200,
          child: Image.asset(
            'assets/images/estudy.jpg',
          ),
        ),
        const Center(
          child: Text(
            "Login",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SizedBox(
            width: 400,
            height: 58,
            child: OutlinedButton(
              onPressed: () async {
                await FirebaseServices().signInWithGoogle();
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return const GmailScreen();
                })));
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey[200],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(FontAwesomeIcons.google),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Sign up with Gmail',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Form(
            key: GlobalKey<FormState>(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Username *',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password *',
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 400,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return const AskQuestions();
                          })));
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)))),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.blue),
                            textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.normal))
                            // MaterialStateProperty<TextStyle?>? textStyle,
                            ),
                        child: const Text(
                          "Login",
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        children: [
                          const Text(
                            "Don't Have An Account?",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.double_arrow,
                                      color: Colors.white,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                TextButton(
                                    onPressed: () {
                                      (Navigator.push(context,
                                          MaterialPageRoute(builder: (_) {
                                        return RegisterPage();
                                      })));
                                    },
                                    child: Text("SIGN UP")),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                // backgroundColor:
                                //     MaterialStateProperty.all(Colors.blue),
                                textStyle: MaterialStateProperty.all<TextStyle>(
                                    const TextStyle(
                                        fontWeight: FontWeight.bold))
                                // MaterialStateProperty<TextStyle?>? textStyle,
                                ),
                          )
                        ],
                      ),
                    )
                  ]),
            )),
        SizedBox(
            width: 50,
            height: 50,
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return RecentQuestions();
                  })));
                },
                child: Text('View As Guest')))
      ]),
    );
  }
}
