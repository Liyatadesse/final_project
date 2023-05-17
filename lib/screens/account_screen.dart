import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            physics: BouncingScrollPhysics(),
            //shrinkWrap: true,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(
                          Icons.person_rounded,
                          size: 110,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      child: RichText(
                          text: const TextSpan(
                              style: TextStyle(color: Colors.black),
                              children: [
                            TextSpan(
                              text: 'mister x\n\n',
                            ),
                            TextSpan(text: 'Joined E-Study On\n\n '),
                            TextSpan(text: 'Last Seen\n\n'),
                            TextSpan(text: 'Last Location\n\n'),
                          ])),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                  key: GlobalKey<FormState>(),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(hintText: 'First Name'),
                        ),
                        // Spacer(),
                        TextField(
                          decoration: InputDecoration(hintText: 'Last Name'),
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: 'Bio'),
                        ),
                        // Spacer(),
                        TextField(
                          decoration: InputDecoration(hintText: 'Address'),
                        ),
                        TextField(
                          decoration:
                              InputDecoration(hintText: 'Current Grade'),
                        ),
                        // Spacer(),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'School Name',
                          ),
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Save Profile'),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(22))),
                              ),
                            ))
                      ])),
              Text(
                'Status',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Text(
                            'Questions',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      )),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue),
                      width: 100,
                      height: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Text(
                            'Answers',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      )),
                  Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Text(
                            'Vote',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text(
                      'Contributions',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text('Recent')),
                    // OutlinedButton(onPressed: () {}, child: Text('Popular')),
                    OutlinedButton(onPressed: () {}, child: Text('Unanswered')),
                    OutlinedButton(onPressed: () {}, child: Text('Answered')),
                    OutlinedButton(onPressed: () {}, child: Text('Day')),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
