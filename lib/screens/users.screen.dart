import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //   backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: ListView(
          physics: BouncingScrollPhysics(),
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: const Text(
                "Users",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Form(
                key: GlobalKey<FormState>(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 23, vertical: 30),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 170,
                        height: 55,
                        child: TextField(
                          decoration: InputDecoration(
                            //  border: OutlineInputBorder(),
                            hintText: 'Search a user...',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 125,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          child:  Text(
                            "Search",
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)))),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Total 2 users',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Card(
                color: const Color.fromARGB(255, 213, 223, 236),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Cha'),
                      subtitle: Text('@cha12         joined on may,2022'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.question_mark_sharp),
                        Icon(Icons.question_answer),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Card(
                color: Color.fromARGB(255, 213, 223, 236),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Cha'),
                      subtitle: Text('@cha12         joined on may,2022'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.question_mark_sharp),
                        Icon(Icons.question_answer),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
