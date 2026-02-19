import 'package:flutter/material.dart';
import '../utils/constants.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.xxl,
      ),
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/img.png',
            height: 32,
            errorBuilder: (context, error, stackTrace) => const Text(
              'kovon',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.m),
          const Text(
            'Kovon is a global talent marketplace connecting world-class talent with top companies worldwide.',
            style: AppTextStyles.bodyMd,
          ),
          const SizedBox(height: AppSpacing.xl),
          const Text(
            'Company',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: AppSpacing.m),
          _buildFooterLink('About Us'),
          _buildFooterLink('Careers'),
          _buildFooterLink('Privacy Policy'),
          _buildFooterLink('Terms of Service'),
          const SizedBox(height: AppSpacing.xl),
          const Text(
            'Contact',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: AppSpacing.m),
          const Text(
            'Email: contact@kovon.io',
            style: AppTextStyles.bodyMd,
          ),
          const SizedBox(height: AppSpacing.s),
          const Text(
            'Phone: +91 9019917618',
            style: AppTextStyles.bodyMd,
          ),
          const SizedBox(height: AppSpacing.xl),
          Row(
            children: [
              _buildSocialIcon(Icons.facebook),
              const SizedBox(width: AppSpacing.m),
              _buildSocialIcon(Icons.link), 
              const SizedBox(width: AppSpacing.m),
              _buildSocialIcon(Icons.alternate_email),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          const Divider(color: Colors.white10),
          const SizedBox(height: AppSpacing.xl),
          const Center(
            child: Text(
              '© 2024 Kovon Global Private Limited. All rights reserved.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: Text(
        text,
        style: AppTextStyles.bodyMd,
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white10),
      ),
      child: Icon(
        icon,
        color: AppColors.textSecondary,
        size: 20,
      ),
    );
  }
}
