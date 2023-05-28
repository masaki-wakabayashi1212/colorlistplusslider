import 'package:flutter/material.dart';
import 'list.dart';

class slider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Color slider'),
        backgroundColor: Color(0xFF00BFA5),
      ),
      body: Center(
        child: Container(
          child: const Text('slider',
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              label: 'slider',
              icon: const Icon(Icons.format_list_bulleted,size: 30,)
          ),
          const BottomNavigationBarItem(
              label: 'slider',
              icon: const Icon(Icons.tune,size: 30,)
          ),
        ],
        onTap: (int value){
          if (value == 0)
            Navigator.pop(context);
        },
      ),
    );
  }
}