import 'package:flutter/material.dart';
import '../utils/constants.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.sectionPadding,
      ),
      child: Column(
        children: [
          // Overlapping Avatars
          _buildAvatarStack(),
          const SizedBox(height: AppSpacing.xxl),
          // Stats Grid
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: AppSpacing.xl,
            crossAxisSpacing: AppSpacing.m,
            childAspectRatio: 1.5,
            children: [
              _buildStatItem("50+", "Countries"),
              _buildStatItem("17,000+", "Jobs"),
              _buildStatItem("10,000+", "Candidates"),
              _buildStatItem("400+", "Employers"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatarStack() {
    return SizedBox(
      height: 120,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _buildAvatar(
            'assets/worker1.png',
            -60,
          ),
          _buildAvatar(
            'assets/worker2.png',
            0,
          ),
          _buildAvatar(
            'assets/worker3.png',
            60,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(String path, double offset) {
    return Transform.translate(
      offset: Offset(offset, 0),
      child: CircleAvatar(
        radius: 50,
        backgroundColor: AppColors.background,
        child: CircleAvatar(
          radius: 46, // 50 (outer radius) - 4 (border width)
          backgroundImage: AssetImage(path),
        ),
      ),
    );
  }

  Widget _buildStatItem(String value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryGreen,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }
}
