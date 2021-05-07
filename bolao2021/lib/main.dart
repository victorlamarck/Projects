import 'package:bolao2021/widgets/main_pag/bottom_nav_bar.dart';
import 'package:bolao2021/widgets/main_pag/palpite_rapido.dart';
import 'package:bolao2021/widgets/main_pag/top5_bolao.dart';
import 'package:bolao2021/widgets/main_pag/top5_brasileirao.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text(
            'Bolão Brasileirão 2021',
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: PalpiteRapido(),
          ),
          Expanded(
            child: Top5Bolao(),
          ),
          Expanded(
            child: Top5Brasileirao(),
          ),
        ],
      ),
      bottomNavigationBar: BotNavPag(),
    );
  }
}
