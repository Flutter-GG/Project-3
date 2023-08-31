import 'package:flutter/material.dart';
import 'package:weekend_project/data/models/media_model.dart';

class ContainerDetail extends StatelessWidget {
  const ContainerDetail({
    super.key,
    this.width = 500,
    this.height = 300,
    this.colors = const Color(0xff393948),
    required this.movie,
  });
  final double width;
  final double height;
  final Color colors;
  final MediaModel movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${movie.originalTitle}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    '${movie.voteAverage}',
                    style: const TextStyle(color: Colors.amber),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 15,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${movie.overview}',
                  style: const TextStyle(
                      color: Color(0xffADADB8), fontWeight: FontWeight.w100),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
