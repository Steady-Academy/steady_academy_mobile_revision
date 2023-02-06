import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:steady_academy_mobile_revision/constants/app_colors.dart';

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
              child: _CarouselItem(
                slideKey: controller.slides[index],
                slideCaption: controller.slidesCaption[index],
                slideDescription: controller.slidesDescription[index],
              ),
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
  const _CarouselItem(
      {Key? key,
      required this.slideKey,
      required this.slideCaption,
      required this.slideDescription})
      : super(key: key);

  final String slideKey;
  final String slideCaption;
  final String slideDescription;

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
                width: 250,
                height: 200,
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
                  '${slideCaption}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text(
                    '${slideDescription}',
                    style: const TextStyle(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
