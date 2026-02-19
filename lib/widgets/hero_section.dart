import 'package:flutter/material.dart';
import '../utils/constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.sectionPadding,
      ),
      decoration: const BoxDecoration(
        color: AppColors.background,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Main Title
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: AppTextStyles.h1.copyWith(fontSize: 40),
              children: const [
                TextSpan(text: 'Your\n'),
                TextSpan(text: 'Passport to\n'),
                TextSpan(
                  text: 'Global Work',
                  style: TextStyle(color: AppColors.primaryGreen),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.l),
          // Subtitle
          const Text(
            'Kovon opens doors for millions of skilled workers to pursue meaningful careers across the world.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
          const SizedBox(height: AppSpacing.xxl),
          // CTA Buttons
          const PrimaryButton(
            text: 'Register with us',
          ),
          const SizedBox(height: AppSpacing.m),
          const PrimaryButton(
            text: 'How it Works',
          ),
        ],
      ),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const PrimaryButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.l,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          elevation: 0,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
