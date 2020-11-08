import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/master_card_logo.dart';
import 'widgets/card_widget.dart';
import 'widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.brown,
          size: 30,
        ),
        elevation: 0,
        title: Text(
          'MY CARDS',
          style: TextStyle(letterSpacing: 3, color: Colors.brown[800]),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: ListView(
          children: [
            Row(
              children: [
                TextWidget(text: 'DEFAULT PAYMENT CARD'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              deepColor: Color(0xff40241a),
              lightColor: Color(0xff9c786c),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                TextWidget(
                  text: 'OTHER CARDS',
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            CardWidget(
              deepColor: Color(0xff002171),
              lightColor: Color(0xff1976d2),
            ),
            SizedBox(
              height: 10,
            ),
            CardWidget(
              deepColor: Color(0xff003300),
              lightColor: Color(0xff4c8c4a),
            ),
            SizedBox(
              height: 100.0,
            ),
            FlatButton(
              child: Container(
                child: Center(
                    child: Text(
                  'ADD NEW CARD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w400),
                )),
                color: Colors.brown,
                width: 300,
                height: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
