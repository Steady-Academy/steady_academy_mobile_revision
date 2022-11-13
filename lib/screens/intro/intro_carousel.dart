import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:steady_academy_mobile_revision/config/app_colors.dart';

import 'intro_controller.dart';

class IntroCarousel extends GetView<IntroController> {
  const IntroCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: PageView.builder(
            itemCount: controller.slides.length,
            controller: controller.pageController,
            itemBuilder: (_, index) => Center(
              child: _CarouselItem(slideKey: controller.slides[index]),
            ),
          ),
        ),
        const SizedBox(height: 20),
        SmoothPageIndicator(
          controller: controller.pageController,
          count: controller.slides.length,
          effect: const ExpandingDotsEffect(
            dotHeight: 4,
            dotWidth: 4,
            spacing: 4,
            activeDotColor: AppColors.primary,
            dotColor: AppColors.disabled,
          ),
        ),
      ],
    );
  }
}

class _CarouselItem extends StatelessWidget {
  const _CarouselItem({Key? key, required this.slideKey}) : super(key: key);

  final String slideKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox.expand(
            child: FittedBox(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/${slideKey}.svg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${slideKey}_caption',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '${slideKey}_description',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
