import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage('images/hwasa.jpg'),
              ),
              Text(
                'Hwa_sa',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'NotoSansCJKR',
                  color: Colors.amber.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                color: Colors.amber.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.amber,
                    ),
                    title: Text('+82 010 1234 5678',
                      style: TextStyle(
                        color:Colors.amber.shade900,
                        fontFamily: 'NotoSansCJKR',
                        fontSize: 18.0,
                      ),
                    )
                )
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.amber,
                  ),
                  title: Text(
                    'hwasa@email.com',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.amber.shade900,
                      fontFamily:'NotoSansCJKR'),
                  ),
                )
              ),
              SizedBox(
                height: 100.0,
              )
            ],
          )
        ),
      ),
    );
  }
}