import 'package:flutter/material.dart';
import 'package:pedshop/constants.dart';
import 'package:pedshop/screens/main_screen/components/text_field.dart';
import 'package:pedshop/screens/main_screen/components/carousel.dart';
import 'package:pedshop/models/pets_dummy.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 32),
                height: height * 0.2,
                child: Text(
                  'Search Friend',
                  style: h1_textStyle,
                ),
              ),
            ),
            Center(child: SearchField()),
            Container(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
                child: Text(
                  'Adopt me',
                  style: h2_textStyle,
                )),
            Carousel(
              petsData: petsData,
            )
          ],
        ),
      ),
    );
  }
}
