import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    this.backdropImage = 'tqhBZVrozBXbD6VubSBQsCfI0YD.jpg',
  });
  final String backdropImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.network(
            'https://image.tmdb.org/t/p/w600_and_h900_bestv2/$backdropImage',
            width: 700,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 500,
          height: 500,
          color: const Color(0xff2D2D3A),
        ),
      ],
    );
  }
}