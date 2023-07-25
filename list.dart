import 'package:flutter/material.dart';
import 'slider.dart';

class User {
  final String username;
  final String urlAvatar;

  const User({
    required this.username,
    required this.urlAvatar,
  });
}

class list extends StatefulWidget {
  const list({Key? key}) : super (key: key);

  @override
  _listState createState() => _listState();
}

class _listState extends State<list>{
  List<User> users = [
    const User(
      username: 'Red',
      urlAvatar: 'images/ff0000.png',
    ),
    const User(
      username: 'Mazenta',
      urlAvatar: 'images/ff00ff.png',
    ),
    const User(
      username: 'Blue',
      urlAvatar: 'images/ff00ff.png',
    ),
  ];

  @override
  Widget build(BuildContext context)=>Scaffold(
      appBar: AppBar(
        title: const Text('Color list'),
        backgroundColor: Color(0xFFFF4081),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index) {
          final user = users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(user.urlAvatar),
              ),
              title: Text(user.username),
              trailing: const Icon(Icons.arrow_forward),
            ),
          );
        }
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              label: 'List',
              icon: const Icon(Icons.format_list_bulleted,size: 30,)
          ),
          const BottomNavigationBarItem(
              label: 'slider',
              icon: const Icon(Icons.tune,size: 30,)
          ),
        ],
        onTap: (int value){
          if (value == 1)
            Navigator.push(
              context,
              MaterialPageRoute(builder:
                  (context) => slider()),
            );
        },
      ),
    );
}

