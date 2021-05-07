import 'package:bolao2021/Data/times.dart';
import 'package:bolao2021/widgets/lista_times.dart';
import 'package:flutter/material.dart';

class TabelaBrasileirao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Classificação Brasileirão')),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              height: 50,
              child: Row(
                children: [
                  Text('Times'),
                  Expanded(
                    child: Container(),
                  ),
                  Text('Pontuação'),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (ctx, index) =>
                    ListaTimes(dummyTimes.values.elementAt(index)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
