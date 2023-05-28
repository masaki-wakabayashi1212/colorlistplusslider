import 'package:flutter/material.dart';
import 'slider.dart';

class list extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Color list'),
        backgroundColor: Color(0xFFFF4081),
      ),
      body: Center(
        child: Container(
          child: const Text('list',
          style: const TextStyle(fontSize: 32.0),
          ),
        ),
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
}