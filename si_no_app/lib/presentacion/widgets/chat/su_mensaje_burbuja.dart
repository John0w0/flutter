import 'package:flutter/material.dart';

class SuMensajeBurbuja extends StatelessWidget {
  const SuMensajeBurbuja({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding:EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mensaje Respondido', style: TextStyle(color: Colors.white),),
             ),
        ),
        const SizedBox(height: 5),

        _ImagenBurbuja(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImagenBurbuja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://labiode.com/wp-content/uploads/2021/05/Duki-01-1024x1024.jpg',
        width: size.width *0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress){
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Esta enviando una imagen'),
          );
        },
      ),
    );
  }
}