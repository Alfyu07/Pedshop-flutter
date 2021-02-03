import 'package:flutter/material.dart';
import 'package:pedshop/constants.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  String key = '';

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        style: informationTextStyle,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              size: 32,
            ),
            hintText: 'Search ...',
            hintStyle: informationTextStyle,
            border: InputBorder.none,
            disabledBorder: InputBorder.none),
        onChanged: (String value) {
          setState(() {
            key = value;
          });
        },
      ),
      width: width * 0.9,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
