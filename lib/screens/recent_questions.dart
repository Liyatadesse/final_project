import 'package:flutter/material.dart';

class RecentQuestions extends StatefulWidget {
  const RecentQuestions({super.key});

  @override
  State<RecentQuestions> createState() => _RecentQuestionsState();
}

class _RecentQuestionsState extends State<RecentQuestions> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Search',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: Notification',
  //     style: optionStyle,
  //   ),
  // ];
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[180],
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(
              Icons.menu_book,
              color: Colors.white,
            ),
          )
        ],
        elevation: 0,
      ),
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.blue,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'E-STUDY',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20 ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hi, Welcome to E-Study\n Collaboration App",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 22,
                              color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "All Questions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          )
          // Form(
          //     key: GlobalKey<FormState>(),
          //     child: Padding(
          //       padding:
          //           const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //       child: SizedBox(
          //         width: 330,
          //         height: 45,
          //         child: TextField(
          //           decoration: InputDecoration(
          //             prefixIcon: const Icon(Icons.search),
          //             // icon: Icon(Icons.search),
          //             border: OutlineInputBorder(
          //                 gapPadding: 1,
          //                 borderRadius: BorderRadius.circular(20)),
          //             hintText: 'Search a question...',
          //           ),
          //         ),
          //       ),
          //     )),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 10),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       const Text(
          //         'All Questions',
          //         style: TextStyle(fontSize: 28),
          //       ),
          //       ElevatedButton(onPressed: () {}, child: Text('Ask Question'))
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          //   child: Align(
          //     alignment: Alignment.topLeft,
          //     child: Text(
          //       'What is cell?  ',
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          //     ),
          //   ),
          // ),
          // const Spacer(),
          // Form(
          //     key: GlobalKey<FormState>(),
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(
          //         horizontal: 18,
          //       ),
          //       child: SizedBox(
          //         //  width: MediaQuery.of(context).size.width * 0.7,
          //         height: MediaQuery.of(context).size.width * 0.35,
          //         child: const TextField(
          //           //maxLines: 12,
          //           textAlign: TextAlign.start,
          //           decoration: InputDecoration(
          //             contentPadding: EdgeInsets.all(100),
          //             border: OutlineInputBorder(),
          //             hintText: 'Give your answer here',
          //           ),
          //         ),
          //       ),
          //     )),
          // Padding(
          //   padding: const EdgeInsets.only(right: 12, top: 5),
          //   child: Align(
          //     alignment: Alignment.bottomRight,
          //     child: ElevatedButton(
          //       style: ButtonStyle(
          //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //             const RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.all(Radius.circular(25)))),
          //       ),
          //       onPressed: () {},
          //       child: const Text('Post Your Answer'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
