import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:steady_academy_mobile_revision/config/app_colors.dart';

class DefaultButton extends StatelessWidget {
  final Widget child;
  final RxBool? isLoading;
  final RxBool? isEnabled;
  final bool isBottomBorderOnly;
  final double roundedSize;
  final Color color;
  final void Function()? onPressed;

  const DefaultButton(
      {Key? key,
      required this.child,
      this.isLoading,
      this.isEnabled,
      this.isBottomBorderOnly = false,
      this.roundedSize = 30,
      this.color = AppColors.primary,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = this.isLoading == null ? false.obs : this.isLoading;
    final isEnabled = this.isEnabled == null ? true.obs : this.isEnabled;
    return Obx(
      () => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(borderRadius: _borderRadius()),
        ),
        onPressed: isLoading == true || isEnabled == false ? null : onPressed,
        child: isLoading == true ? _indicator() : child,
      ),
    );
  }

  Widget _indicator() {
    return const Center(
      child: SizedBox(
        width: 12,
        height: 12,
        child: CircularProgressIndicator(),
      ),
    );
  }

  BorderRadius _borderRadius() {
    return isBottomBorderOnly
        ? BorderRadius.only(
            topLeft: Radius.zero,
            topRight: Radius.zero,
            bottomLeft: Radius.circular(roundedSize),
            bottomRight: Radius.circular(roundedSize),
          )
        : BorderRadius.circular(roundedSize);
  }
}
