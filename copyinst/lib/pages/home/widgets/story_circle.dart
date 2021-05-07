import 'package:flutter/material.dart';

class StoryCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(
                  'https://scontent.fgvr3-1.fna.fbcdn.net/v/t1.6435-9/39539439_414872242369931_7348478955130716160_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeE2kgpBPFON_VjDdhFFOa_VCmiWpBDHZRQKaJakEMdlFCJ-lWOi3DFofLkwovGL3_xI7RArPG8RBk0WACmJVDxu&_nc_ohc=_JIdlkMFVjkAX96u7T2&_nc_ht=scontent.fgvr3-1.fna&oh=4fbb950939922a7ec14df3d9568b56e1&oe=60B8C707'),
            ),
          ),
        ),
        Text(
          'victorlamarck',
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
