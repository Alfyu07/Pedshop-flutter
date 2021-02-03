import 'package:flutter/material.dart';
import 'package:pedshop/screens/main_screen/main_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(16.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('assets/images/kucing1.jpg'),
                  )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 32.0),
                    child: Text('Pedshop',
                        style: TextStyle(
                            fontFamily: 'FredokaOne',
                            fontSize: 42,
                            color: Colors.black))),
                Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
                    child: Text(
                        'You\'ve decided to buy a pet? \nwe help you find your new friend.',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            color: Colors.black54))),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.pets),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MainScreen();
          }));
        },
      ),
    );
  }
}
