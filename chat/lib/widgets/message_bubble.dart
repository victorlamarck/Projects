import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final Key key;
  final String userName;
  final String userImage;
  final String message;
  final bool belongToMe;

  MessageBubble(
    this.message,
    this.userName,
    this.userImage,
    this.belongToMe, {
    this.key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment:
              belongToMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: belongToMe
                    ? Colors.grey[400]
                    : Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                  bottomLeft:
                      belongToMe ? Radius.circular(12) : Radius.circular(0),
                  bottomRight:
                      belongToMe ? Radius.circular(0) : Radius.circular(12),
                ),
              ),
              width: 140,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              margin: EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 8,
              ),
              child: Column(
                crossAxisAlignment: belongToMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: belongToMe ? Colors.black : Colors.white,
                    ),
                  ),
                  Text(
                    message,
                    style: TextStyle(
                      color: belongToMe ? Colors.black : Colors.white,
                    ),
                    textAlign: belongToMe ? TextAlign.end : TextAlign.start,
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: belongToMe ? null : 127,
          right: belongToMe ? 127 : null,
          child: CircleAvatar(
            backgroundImage: NetworkImage(this.userImage),
          ),
        ),
      ],
    );
  }
}
