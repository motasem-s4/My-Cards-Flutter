import 'package:flutter/material.dart';

class MasterCardLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            width: 60,
            height: 30,
          ),
          Positioned(
            right: 5,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.4),
                shape: BoxShape.circle
              ),
            ),
          ),
          Positioned(
            left: 5,
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  shape: BoxShape.circle
              ),
            ),
          ),
        ],
      ),
    );
  }
}
