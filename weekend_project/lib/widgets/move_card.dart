import 'package:flutter/material.dart';

class MoveCard extends StatelessWidget {
  const MoveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // InkWell(
        //   onTap: () {

        //   },
        //child:
        Container(
      clipBehavior: Clip.hardEdge,
      height: 600 * 9 / 16,
      width: 400 * 9 / 16,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: 600 * 9 / 16,
            width: 400 * 9 / 16,
            child: Image.network(
              'https://m.media-amazon.com/images/M/MV5BYjdlZjRiYTUtN2NlNC00MDkxLWI0MmItOTUwNTg1YTU4MWUxXkEyXkFqcGdeQXVyMTA1OTEwNjE@._V1_FMjpg_UX1000_.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 170,
            left: 0,
            right: 0,
            child: Container(
              color: const Color.fromARGB(0, 0, 0, 0).withOpacity(0.3),
              height: 100,
            ),
          ),
          const Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '2023-08-09',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'mulan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'in a city where fire,...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ],
      ),
      //),
    );
  }
}
