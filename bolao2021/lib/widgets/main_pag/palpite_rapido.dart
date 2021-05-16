import 'package:flutter/material.dart';

class PalpiteRapido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 15, top: 10),
            child: Text(
              'Palpite Rápido',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.deepOrange,
                    ),
                    child: Column(
                      children: [
                        Text(
                          '30/05/2021 às 16 Horas',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Flamengo x Palmeiras',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 12),
                                      Container(
                                        child: Image.network(
                                          'https://pbs.twimg.com/media/E055q9CWUAEn1Hr?format=png&name=360x360',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(child: SizedBox()),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 25)
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'X',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 25),
                                      Container(
                                        width: 20,
                                        height: 20,
                                        color: Colors.white,
                                      ),
                                      Expanded(
                                        child: SizedBox(),
                                      ),
                                      Container(
                                        child: Image.network(
                                          'https://pbs.twimg.com/profile_images/1307846440065142784/0_B9N0mJ_400x400.png',
                                        ),
                                      ),
                                      SizedBox(width: 12)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          'Maracanã - Rio de Janeiro',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Corinthians x Atlético/GO'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
