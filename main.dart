import 'package:exercicio2/com_estado.dart';
import 'package:flutter/material.dart';

void main() {
  //runApp(MainApp());
  runApp(ComEstado());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  String nome = 'Fulano';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  nome = 'Bruno';
                  print('O nome é: $nome');
                },
                child: Text('Mostra Nome')),
            Text('$nome'),
          ],
        ),
      ),
    );
  }
}
