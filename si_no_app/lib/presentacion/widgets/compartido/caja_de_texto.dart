import 'package:flutter/material.dart';

class CajadeTexto extends StatelessWidget {
  const CajadeTexto({super.key});

  @override
  Widget build(BuildContext context) {

    final OutlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40)
    );

    final inputDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder,
      focusedBorder: OutlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: (){
          print('Valor de la caja de texto?');
        },
        ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('Cambiado: $value');
      },
    );
  }
}