import 'package:flutter/material.dart';

class PalpiteRapido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            child: Text('Palpite Rápido'),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: 50,
                    height: 150,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('30/05/2021 às 16 Horas'),
                        Text('Flamengo x Palmeiras'),
                        SizedBox(
                          height: 100,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.red,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Image.network(
                                            'data:image/png;base64,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'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                        Text('Maracanã - Rio de Janeiro'),
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
