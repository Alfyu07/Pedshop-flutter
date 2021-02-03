import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pedshop/models/pets.dart';
import 'package:pedshop/screens/detail_screen/detail_screen.dart';

class Carousel extends StatelessWidget {
  final List<Pet> petsData;

  Carousel({@required this.petsData});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
            items: petsData.map((pet) {
              return FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(pet: pet);
                  }));
                },
                child: Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                          offset: Offset(0, 3))
                    ],
                    image: DecorationImage(
                      image: NetworkImage(pet.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.4,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.9)));
  }
}
