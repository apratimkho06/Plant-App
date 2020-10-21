import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screens/details/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
                IconCard(icon: 'assets/icons/sun.svg'),
                IconCard(icon: 'assets/icons/icon_2.svg'),
                IconCard(icon: 'assets/icons/icon_3.svg'),
                IconCard(icon: 'assets/icons/icon_4.svg'),
              ],
            ),
          ),
          Container(
            height: size.height * 0.8,
            width: size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(63),
                bottomLeft: Radius.circular(63),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 60,
                  color: kPrimaryColor.withOpacity(0.29),
                ),
              ],
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/img.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
