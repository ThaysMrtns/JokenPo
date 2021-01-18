import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Escolha do App:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          //Image.asset("imagens/padrao.png"),
          GestureDetector(
            onTap: () {
              print("Click!");
            },
            onDoubleTap: () {
              print("Duplo click!");
            },
            child: Image.asset("imagens/padrao.png"), //Widget a ser clickado
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Escolha uma opção abaixo:",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "imagens/papel.png",
                height: 100,
              ),
              Image.asset(
                "imagens/pedra.png",
                height: 100,
              ),
              Image.asset(
                "imagens/tesoura.png",
                height: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
