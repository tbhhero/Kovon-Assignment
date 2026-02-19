import 'package:flutter/material.dart';
import '../utils/constants.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.sectionPadding,
      ),
      color: AppColors.surface,
      child: Column(
        children: [
          const Text(
            'How It Works',
            style: AppTextStyles.h2,
          ),
          const SizedBox(height: AppSpacing.m),
          const Text(
            'Get started in 4 simple steps',
            style: AppTextStyles.bodyMd,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xxl),
          _buildStep(
            number: '01',
            title: 'Create Account',
            description: 'Sign up and complete your profile with your skills and experience.',
          ),
          _buildConnector(),
          _buildStep(
            number: '02',
            title: 'Pass Assessment',
            description: 'Take our specialized tests to verify your expertise in your field.',
          ),
          _buildConnector(),
          _buildStep(
            number: '03',
            title: 'Interview Process',
            description: 'Connect with top-tier companies looking for your specific talent.',
          ),
          _buildConnector(),
          _buildStep(
            number: '04',
            title: 'Start Working',
            description: 'Accept your offer and begin your journey with a global team.',
          ),
        ],
      ),
    );
  }

  Widget _buildStep({
    required String number,
    required String title,
    required String description,
  }) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: AppColors.primaryGreen,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.primaryGreen.withValues(alpha:0.3),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Center(
            child: Text(
              number,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.m),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: AppSpacing.s),
        Text(
          description,
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMd,
        ),
      ],
    );
  }

  Widget _buildConnector() {
    return Container(
      width: 2,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: AppSpacing.s),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.primaryGreen,
            AppColors.primaryGreen.withValues(alpha:0),
          ],
        ),
      ),
    );
  }
}
