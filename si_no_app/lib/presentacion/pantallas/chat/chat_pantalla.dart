import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/mi_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/su_mensaje_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/compartido/caja_de_texto.dart';
class ChatPantalla extends StatelessWidget{
  const ChatPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://media.c5n.com/p/81e4f2155628d9d1dbfe7533ebdef780/adjuntos/326/imagenes/000/202/0000202445/1200x675/smart/duki.png'),
          ),
          ),
          title: const Text('Duko'),
          centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder:(context, index){
                  return (index % 2 == 0)
                  ? const SuMensajeBurbuja()
                  : const MiMensajeBurbuja();
                })),
          
            const CajadeTexto(),
          ],
        ),
        ),
        );
  }
}