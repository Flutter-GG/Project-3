import 'package:flutter/material.dart';
import 'package:weekend_project/widget/BackgroundImage.dart';
import 'package:weekend_project/widget/ContainerDetail.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainerDetail(),
            ],
          ),
        ],
      ),
    );
  }
}






//