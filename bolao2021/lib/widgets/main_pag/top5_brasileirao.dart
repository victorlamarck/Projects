import 'package:flutter/material.dart';

class Top5Brasileirao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text('G5 brasileirão'),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text('Z5 brasileirão'),
            ),
          ),
        ],
      ),
    );
  }
}
