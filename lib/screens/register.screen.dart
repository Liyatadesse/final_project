import 'package:final_project/screens/ask.question.screen.dart';
import 'package:flutter/material.dart';

import 'login.screen.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      // ),
      body: Padding(
        padding: const EdgeInsets.only(top: 23),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              SizedBox(
                height: 130,
                width: 180,
                child: Image.asset('assets/images/download.png'),
              ),
              Center(
                child: Text(
                  "Create Your Account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Form(
                  key: GlobalKey<FormState>(),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13, vertical: 16),
                      child: Column(children: [
                        Row(
                          children: const [
                            SizedBox(
                              width: 170,
                              height: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'First Name *',
                                ),
                              ),
                            ),
                            Spacer(),
                            SizedBox(
                              width: 170,
                              height: 55,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Last Name *',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
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
                            hintText: 'Email Address *',
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
                          height: 20,
                        ),
                        const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Confirm Password *',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)))),
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
                              "Sign Up",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Row(
                            children: [
                              const Text(
                                "Already Have An Account?",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
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
                                    SizedBox(
                                      width: 10,
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(builder: (_) {
                                            return LoginPage();
                                          }));
                                        },
                                        child: Text("SIGN IN")),
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
                                    textStyle:
                                        MaterialStateProperty.all<TextStyle>(
                                            const TextStyle(
                                                fontWeight: FontWeight.bold))
                                    // MaterialStateProperty<TextStyle?>? textStyle,
                                    ),
                              )
                            ],
                          ),
                        )
                      ])))
            ],
          ),
        ),
      ),
    );
  }
}
