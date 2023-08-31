import 'package:flutter/material.dart';
import 'package:weekend_project/ui/widgets/background_image.dart';
import 'package:weekend_project/ui/widgets/containerd_detail.dart';

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