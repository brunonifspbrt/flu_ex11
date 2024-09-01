import 'package:flutter/material.dart';

class ComEstado extends StatefulWidget {
  const ComEstado({super.key});

  @override
  State<ComEstado> createState() => _ComEstadoState();
}

class _ComEstadoState extends State<ComEstado> {
  String nome = 'Fulano';
  var valor = 128;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    nome = 'Bruno';
                    valor = 255;
                  });
                  print('O nome é: $nome');
                },
                child: Text('Mostrar Nome'),
                 style: OutlinedButton.styleFrom(side: BorderSide(width: 3.0, color: Colors.green),
                   ),
              ),
              Opacity(
                  //opacity: visivel ? 1.0 : 0.5,
                  opacity: 0.5,
                  child: Container(
                    color: Colors.blue,
                    width: 100,
                    height: 100,
                    child: Text('$nome'),
                  )),
              Text(
                nome,
                style: TextStyle(
                  color: Color.fromARGB(valor, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
