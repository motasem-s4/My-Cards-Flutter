import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_cards_flutter/widgets/master_card_logo.dart';


class CardWidget extends StatelessWidget {

  CardWidget({this.deepColor,this.lightColor});

  final Color deepColor;
  final Color lightColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
      width: 380,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: [deepColor,lightColor],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.sim_card,
                  color: Colors.grey,
                  size: 30,

                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.trashAlt,
                      size: 25,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '01 / 2025',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
            Text(
              '1234 5783 1231 9123',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
            Text('Card Holder',style: TextStyle(
              color: Colors.grey,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Johnny Bravo', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                ),
                MasterCardLogo()
              ],
            ),
          ],
        ),
      ),
    );
  }
}