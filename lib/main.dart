import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MaterialApp(
    home:Home (),
    debugShowCheckedModeBanner: false,
  ));

}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var  _fraseGerada = "Clique Abaixo Para Gerar Uma Frase";
  var _frases = [
    "Só as Cachorras, uh uh uh uh uh… - Nasus",
    "Água mole pedra dura e fim de papo - Malphite",
    "A morte é como o vento, esta sempre do meu lado - Yasuo",
    "A dor é temporária, a vitória é eterna - Aatrox",
    "A paz é a maior mentira da história - Aatrox",
    "Não confunda piedade com fraqueza - Ashe",
    "Um coração gelado só precisa de um coração caloroso - Braum",
    "Quanto mais negra a noite, mais brilhantes são as estrelas - Braum",
    "Não importa quanto tempo você tem, mas como você o usa - Ekko"
  ];

  void _gerarFrase()
  {
    var numeroSorteado = Random().nextInt(8);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases de Campeões do LOL"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        decoration: BoxDecoration(
          border : Border.all(width: 3, color: Colors.amber)
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logolol.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style:  TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black

              ),

            ),
            RaisedButton(
              child: Text("Nova Frase", style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold

              ),),
              color: Colors.black,
              onPressed: _gerarFrase,
            )
          ],

        ),
      ),

    );
  }
}
