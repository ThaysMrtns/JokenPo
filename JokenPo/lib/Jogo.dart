import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Jogo> {
  var imagemApp = AssetImage("imagens/padrao.png");

  void opcaoSelecionada(String escolhaUser) {
    var opcoes = ["pedra", "papel", "tesoura"];
    var num = Random().nextInt(3);
    var escolhaApp = opcoes[num];

    print("Escolha do usuário: $escolhaUser");
    print("Escolha do app: $escolhaApp");

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this.imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this.imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this.imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    if (escolhaUser == "pedra" && escolhaApp == "tesoura") {
      print("user ganhou");
    } else if (escolhaUser == "pedra" && escolhaApp == "papel") {
      print("user perdeu");
    } else if (escolhaUser == escolhaApp) {
      print("empate");
    } else if (escolhaUser == "papel" && escolhaApp == "tesoura") {
      print("user perdeu");
    } else if (escolhaUser == "papel" && escolhaApp == "pedra") {
      print("user ganhou");
    } else if (escolhaUser == "tesoura" && escolhaApp == "papel") {
      print("user ganhou");
    } else if (escolhaUser == "tesoura" && escolhaApp == "pedra") {
      print("user perdeu");
    }
  }

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
          Image(image: this.imagemApp),
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
              GestureDetector(
                onTap: () => opcaoSelecionada("papel"),
                child: Image.asset(
                  "imagens/papel.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("pedra"),
                child: Image.asset(
                  "imagens/pedra.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => opcaoSelecionada("tesoura"),
                child: Image.asset(
                  "imagens/tesoura.png",
                  height: 100,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
