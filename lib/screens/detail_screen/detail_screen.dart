import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pedshop/models/pets.dart';
import 'package:pedshop/constants.dart';

class DetailScreen extends StatelessWidget {
  final Pet pet;

  DetailScreen({@required this.pet});
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 0,
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      foregroundDecoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(pet.imageUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SafeArea(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RawMaterialButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 24,
                          ),
                          padding: EdgeInsets.all(2.0),
                          shape: CircleBorder(),
                        ),
                        FavoriteButton()
                      ],
                    ))
                  ]),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 - 25,
                  height: MediaQuery.of(context).size.height / 2 + 25,
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(pet.nama, style: h2_textStyle),
                                    IconButton(
                                        onPressed: () {},
                                        tooltip: pet.ras,
                                        icon: pet.jenisHewan == 'Cat'
                                            ? SvgPicture.asset(
                                                'assets/icons/cat.svg')
                                            : SvgPicture.asset(
                                                'assets/icons/dog.svg'))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      pet.lokasi + '  -  ' + pet.jenisKelamin,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontFamily: 'Poppins',
                                          fontSize: 16),
                                    )
                                  ],
                                )
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.all(32),
                            child: Text(pet.deskripsi,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 20,
                                    fontFamily: 'Poppins'))),
                        Container(
                          child: Center(
                              child: FlatButton(
                            color: Colors.black,
                            textColor: Colors.white,
                            disabledColor: Colors.grey,
                            disabledTextColor: Colors.white,
                            padding: EdgeInsets.all(16.0),
                            splashColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            onPressed: () {
                              // Aksi ketika button diklik
                            },
                            child: Text(
                              'Meet with ${pet.nama}',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ])),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      elevation: 2.0,
      fillColor: Colors.white,
      child: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        size: 24,
        color: Colors.red,
      ),
      padding: EdgeInsets.all(2.0),
      shape: CircleBorder(),
    );
  }
}
