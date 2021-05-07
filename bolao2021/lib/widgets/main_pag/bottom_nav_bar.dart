import 'package:flutter/material.dart';
import 'package:bolao2021/pages/palpites.dart';
import 'package:bolao2021/pages/tabela_bolao.dart';
import 'package:bolao2021/pages/tabela_brasileirao.dart';
import 'package:get/get.dart';

class BotNavPag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      return Get.to(Palpites());
                    },
                  ),
                  Text('Palpites'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      return Get.to(TabelaBolao());
                    },
                  ),
                  Text('Tabela Bolão'),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.shop),
                    onPressed: () {
                      return Get.to(TabelaBrasileirao());
                    },
                  ),
                  Text('Tabela Brasileirão'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
