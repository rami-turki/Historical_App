import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:history_app/core/utils/app_colors.dart';

class WarsCarouslIndicator extends StatefulWidget {
  final String image;
  const WarsCarouslIndicator({super.key, required this.image});

  @override
  State<WarsCarouslIndicator> createState() => _WarsCarouslIndicatorState();
}

class _WarsCarouslIndicatorState extends State<WarsCarouslIndicator> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> warsImages = [
      'assets/images/Frame 33.jpg',
      'assets/images/Frame 34.jpg',
      'assets/images/Frame 35.jpg',
    ];

    return Stack(
      children: [
        CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 300),
              enlargeCenterPage: true,
              viewportFraction: 1,
            ),
            items: warsImages
                .map(
                  (e) => Container(
                    width: double.infinity,
                    height: 169,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        e,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
                .toList()),
        Positioned(
          bottom: 10,
          left: 50,
          right: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: warsImages
                .asMap()
                .entries
                .map(
                  (item) => Container(
                    height: 8,
                    width: 8,
                    margin: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == item.key
                          ? AppColors.grey
                          : Colors.white,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
