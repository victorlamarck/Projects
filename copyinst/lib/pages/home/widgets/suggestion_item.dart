import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SuggestionItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 5, 0, 5),
      child: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(
                'https://scontent.fgvr3-1.fna.fbcdn.net/v/t1.6435-9/39539439_414872242369931_7348478955130716160_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeE2kgpBPFON_VjDdhFFOa_VCmiWpBDHZRQKaJakEMdlFCJ-lWOi3DFofLkwovGL3_xI7RArPG8RBk0WACmJVDxu&_nc_ohc=_JIdlkMFVjkAX96u7T2&_nc_ht=scontent.fgvr3-1.fna&oh=4fbb950939922a7ec14df3d9568b56e1&oe=60B8C707'),
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'victorlamarck',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  'Victor Lamarck',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                'Seguir',
                style: TextStyle(
                  color: Color(0xFF0396F6),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
