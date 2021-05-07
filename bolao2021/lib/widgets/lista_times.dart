import 'package:bolao2021/Data/times.dart';
import 'package:flutter/material.dart';

class ListaTimes extends StatelessWidget {
  final Times time;
  ListaTimes(this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Container(
            width: 35,
            height: 35,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.black,
              child: Icon(Icons.person),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(time.name),
          ),
          Text('0'),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
