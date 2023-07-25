import 'package:flutter/material.dart';
import 'list.dart';

class listdetail extends StatelessWidget{
  final User user;

  const listdetail({
    Key? key, required this.user,}) : super (key: key);

@override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text(user.username),
        backgroundColor: Color(user.barcolor),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            Image.asset(
              user.urlAvatar,
              height: 200,
              width: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 30),
            Text(
              user.username,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
  );
}
