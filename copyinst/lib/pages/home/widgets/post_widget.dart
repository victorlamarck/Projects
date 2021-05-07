import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final desktop = ResponsiveWrapper.of(context).isDesktop;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: desktop ? 16 : 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 14, 14),
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
                  child: Text(
                    'victorlamarck',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),
                  ),
                ),
                GestureDetector(
                  child: Icon(Icons.more_horiz_sharp, color: Colors.white),
                )
              ],
            ),
          ),
          Image.network(
              'https://scontent.fgvr3-1.fna.fbcdn.net/v/t1.6435-9/39539439_414872242369931_7348478955130716160_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=e3f864&_nc_eui2=AeE2kgpBPFON_VjDdhFFOa_VCmiWpBDHZRQKaJakEMdlFCJ-lWOi3DFofLkwovGL3_xI7RArPG8RBk0WACmJVDxu&_nc_ohc=_JIdlkMFVjkAX96u7T2&_nc_ht=scontent.fgvr3-1.fna&oh=4fbb950939922a7ec14df3d9568b56e1&oe=60B8C707'),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.messenger_outline),
                  color: Colors.white,
                  onPressed: () {},
                ),
                const SizedBox(width: 4),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Curtido por danielciolfi e outras 300 pessoas',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  'HÁ 1 HORA',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
          if (desktop) ...[
            Divider(
              color: Colors.white,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 0, 24),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isCollapsed: true,
                        hintText: 'Adicione um  comentário...',
                        hintStyle: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Publicar',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ]
        ],
      ),
    );
  }
}
