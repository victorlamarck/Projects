import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [Condition.smallerThan(name: TABLET)],
          child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.home), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.send), onPressed: () {}),
        const SizedBox(width: 4),
        IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
        const SizedBox(width: 4),
        CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://scontent.fgvr3-1.fna.fbcdn.net/v/t1.6435-9/39539439_414872242369931_7348478955130716160_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeE2kgpBPFON_VjDdhFFOa_VCmiWpBDHZRQKaJakEMdlFCJ-lWOi3DFofLkwovGL3_xI7RArPG8RBk0WACmJVDxu&_nc_ohc=_JIdlkMFVjkAX96u7T2&_nc_ht=scontent.fgvr3-1.fna&oh=4fbb950939922a7ec14df3d9568b56e1&oe=60B8C707'),
        )
      ],
    );
  }
}
