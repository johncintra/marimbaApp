import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MarimbaApp());

class MarimbaApp extends StatelessWidget {
  const MarimbaApp({Key? key}) : super(key: key);

  void playSom(int numberSom) {
    final player = AudioPlayer();
    player.play(AssetSource('nota$numberSom.wav'));
  }

  Expanded createButton({Color cor = Colors.black, int numberNota = 0}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSom(numberNota);
        },
        style: TextButton.styleFrom(backgroundColor: cor),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(cor: Colors.teal, numberNota: 1),
              createButton(cor: Colors.blue, numberNota: 2),
              createButton(cor: Colors.yellow, numberNota: 3),
              createButton(cor: Colors.red, numberNota: 4),
              createButton(cor: Colors.grey, numberNota: 5),
              createButton(cor: Colors.purple, numberNota: 6),
              createButton(cor: Colors.brown, numberNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
