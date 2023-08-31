import 'package:flutter/material.dart';
import 'package:weekend_project/ui/widgets/movie_card.dart';
import 'package:weekend_project/ui/widgets/search_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2D2D3A),
      appBar: AppBar(
        backgroundColor: const Color(0xff2D2D3A),
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SearchTextFild(),
              const SizedBox(height: 40),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 240,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const MoveCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
