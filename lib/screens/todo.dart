import 'package:flutter/material.dart';
import 'package:note_app/screens/home.dart';

import 'Page2.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'To-do',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  hintText: 'search to-dos',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                    color: Color.fromARGB(255, 118, 126, 131),
                  ),
                  fillColor: Color.fromARGB(255, 46, 44, 44),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  hintText: 'welcome to To-do',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: Color.fromARGB(255, 149, 163, 170),
                  ),
                  fillColor: Color.fromARGB(255, 63, 62, 62),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  hintText: 'Create your to-dos by typing',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: Color.fromARGB(255, 169, 181, 187),
                  ),
                  fillColor: Color.fromARGB(255, 51, 50, 50),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                  hintText: 'Tap on to-do content to edit it',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.circle_outlined,
                    size: 15,
                    color: Color.fromARGB(255, 149, 156, 163),
                  ),
                  fillColor: Color.fromARGB(255, 56, 54, 54),
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: const Text('this is the bottom sheet'),
                      );
                    });
              },
              child: const Text(''));
        },
        elevation: 10,
        backgroundColor: Colors.blue.shade700,
        child: const Icon(
          Icons.add,
          size: 20,
          color: Colors.white70,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey.shade700,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ));
                      },
                      icon: const Icon(
                        Icons.notes,
                        color: Colors.white,
                      )),
                  const Text(
                    'Notes',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Todo(),
                          ));
                    },
                    icon: const Icon(Icons.check_circle_outline_outlined),
                    color: Colors.white,
                  ),
                  const Text(
                    'To-dos',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
