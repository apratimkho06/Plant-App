import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/home/components/featured_plants.dart';
import 'package:plantapp/screens/home/components/header_with_searchbox.dart';
import 'package:plantapp/screens/home/components/recommend_plants.dart';
import 'package:plantapp/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(),
          TitleWithMoreButton(title: 'Recommended', press: () {}),
          RecommendPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
        ],
      ),
    );
  }
}
