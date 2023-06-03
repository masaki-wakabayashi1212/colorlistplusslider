import 'package:flutter/material.dart';
import 'list.dart';

const colorvalTextStyle = TextStyle(fontSize: 30);
Color green = Colors.green;
Color red = Colors.red;
Color blue = Colors.blue;


void main ()=> runApp(const MaterialApp(home: slider()));

class slider extends StatefulWidget {
  const slider({Key? key}) :super (key: key);

  @override
  State<StatefulWidget> createState() => sliderState();
}

class sliderState extends State<slider> {
  double rvalue = 0, gvalue = 0, bvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color slider'),
        backgroundColor: Color(0xFF00BFA5),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Color.fromRGBO(rvalue.toInt(), gvalue.toInt(),
                      bvalue.toInt(), 1),
                  height: 150,
                  width: 1000,
                ),
              ),
            ),
          Text(
            "Red : ${rvalue.toInt().toString()}",
            style: colorvalTextStyle,
          ),
          Slider(
              min:0,
              max:255,
              activeColor:red,
              thumbColor:red,
              divisions:255,
              onChanged:(val)=>{
                setState((){
                  rvalue = val;
                })
              },
              value:rvalue),
            Text(
              "green : ${gvalue.toInt().toString()}",
              style: colorvalTextStyle,
            ),
            Slider(
                min:0,
                max:255,
                activeColor:green,
                thumbColor:green,
                divisions:255,
                onChanged:(val)=>{
                  setState((){
                    gvalue = val;
                  })
                },
                value:gvalue),
            Text(
              "blue : ${bvalue.toInt().toString()}",
              style: colorvalTextStyle,
            ),
            Slider(
                min:0,
                max:255,
                activeColor:blue,
                thumbColor:blue,
                divisions:255,
                onChanged:(val)=>{
                  setState((){
                    bvalue = val;
                  })
                },
                value:bvalue),
          ],
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
              label: 'List',
              icon: const Icon(Icons.format_list_bulleted, size: 30,)
          ),
          const BottomNavigationBarItem(
              label: 'slider',
              icon: const Icon(Icons.tune, size: 30,)
          ),
        ],
        onTap: (int value) {
          if (value == 0)
            Navigator.pop(context);
        },
      ),
    );
  }
}