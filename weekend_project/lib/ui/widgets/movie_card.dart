import 'package:flutter/material.dart';
import 'package:weekend_project/data/models/media_model.dart';

class MoveCard extends StatelessWidget {
  const MoveCard({
    super.key,
    this.onTab,
    required this.movie,
  });

  final MediaModel movie;
  final Function()? onTab;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 600 * 9 / 16,
        width: 400 * 9 / 16,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Stack(
          children: [
            SizedBox(
              height: 600 * 9 / 16,
              width: 400 * 9 / 16,
              child: Image.network(
                'https://image.tmdb.org/t/p/w600_and_h900_bestv2/${movie.posterPath}',
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 170,
              left: 0,
              right: 0,
              child: Container(
                color: const Color.fromARGB(
                  0,
                  0,
                  0,
                  0,
                ).withOpacity(
                  0.3,
                ),
                height: 100,
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${movie.releaseDate}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '${movie.originalTitle}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '${movie.overview}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
