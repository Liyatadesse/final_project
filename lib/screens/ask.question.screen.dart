import 'package:final_project/screens/account_screen.dart';
import 'package:final_project/screens/recent_questions.dart';
import 'package:final_project/screens/users.screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const List<String> list = <String>[
  'Natural Science',
  'Social Science',
  'Others'
];
const List<String> lists = <String>[
  'Biology',
  'Chemistry',
  'Maths',
  'English',
  'Sport',
  'Physics',
  'Amharic',
  'Geography',
  'History',
  'Civics',
  'Economics'
];

class AskQuestions extends StatefulWidget {
  const AskQuestions({super.key});

  @override
  State<AskQuestions> createState() => _AskQuestionsState();
}

class _AskQuestionsState extends State<AskQuestions> {
  String dropdownValue = list.first;
  String dropdownValue2 = lists.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Center(
                child: Card(
                  child: Column(
                    children: [
                      const Text(
                        "Ask a Question ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            DropdownButton<String>(
                              focusColor: Colors.blue[800],
                              value: dropdownValue,
                              icon: const Icon(Icons.arrow_drop_down_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.grey,
                              ),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });
                              },
                              items: list.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              width: 120,
                            ),
                            DropdownButton<String>(
                              value: dropdownValue2,
                              icon: const Icon(Icons.arrow_drop_down_outlined),
                              elevation: 16,
                              style: const TextStyle(color: Colors.black),
                              underline: Container(
                                height: 2,
                                color: Colors.grey,
                              ),
                              onChanged: (String? value) {
                                // This is called when the user selects an item.
                                setState(() {
                                  dropdownValue2 = value!;
                                });
                              },
                              items: lists.map<DropdownMenuItem<String>>(
                                  (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Please be make sure to give a descriptive title',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Form(
                          key: GlobalKey<FormState>(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 13),
                            child: Column(
                              children: [
                                const TextField(
                                  decoration: InputDecoration(
                                      //prefixText better to phone number
                                      //suffixText: "title",
                                      hintText: "Title",
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Description",
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const TextField(
                                  decoration: InputDecoration(
                                      hintText: "Tags",
                                      border: OutlineInputBorder()),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color.fromARGB(
                                                      255, 209, 25, 12))),
                                      onPressed: () {},
                                      child: const Text('CANCEL'),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    ElevatedButton(
                                      style: const ButtonStyle(),
                                      onPressed: () async {
                                        final Uri _url =
                                            Uri.parse('https://flutter.dev');
                                        // if (await canLaunch(_url)) {
                                        //   launch(_url);
                                        // } else {
                                        //   throw "Could not launch $_url";
                                        // }
                                        Future<void> _launchUrl() async {
                                          if (!await launchUrl(_url)) {
                                            throw Exception(
                                                'Could not launch $_url');
                                          }
                                        }
                                      },
                                      child: const Text('SUBMIT'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 40),
            children: [
              ListTile(
                leading: const Icon(Icons.people),
                title: const Text('Users'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const Users();
                  })));
                },
              ),
              ListTile(
                leading: const Icon(Icons.question_answer_outlined),
                title: const Text('Questions'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const RecentQuestions();
                  })));
                },
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text('Account'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return const AccountScreen();
                  })));
                },
              ),
              ListTile(
                leading: const Icon(Icons.dashboard),
                title: const Text('DashBoard'),
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: ((context) {
                  //   return const AccountScreen();
                  // })));
                },
              ),
            ],
          ),
        ));
  }
}
