import 'package:flutter/material.dart';
import '../widgets/feature_card.dart';
import '../widgets/job_card.dart';
import '../widgets/hero_section.dart';
import '../widgets/how_it_works_section.dart';
import '../widgets/footer_section.dart';
import '../widgets/header.dart';
import '../widgets/stats_section.dart';
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            // Scrollable Content
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: const [
                    // Empty space for fixed header
                    SizedBox(height: 70),
                    HeroSection(),
                    StatsSection(),
                    FeaturedJobsSection(),
                    FeaturesSection(),
                    HowItWorksSection(),
                    FooterSection(),
                  ],
                ),
              ),
            ),
            // Fixed Header
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Header(),
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedJobsSection extends StatelessWidget {
  const FeaturedJobsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.sectionPadding,
      ),
      child: Column(
        children: const [
          Text(
            'Featured Jobs',
            style: AppTextStyles.h2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.s),
          Text(
            'The #1 Job Board for Hiring Creative Professionals',
            style: AppTextStyles.bodyMd,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppSpacing.xl),
          JobCard(
            title: 'Lift Installer',
            salary: '₹2.2L - ₹2.7L/ Month',
            location: 'Israel',
            company: 'ALFA DIVINE CONSULTANT LLP',
            time: '4 weeks ago',
            avatarLetter: 'A',
            description: 'Installs, tests, and commissions lift/elevator...',
          ),
          JobCard(
            title: 'Mechanical Project Leader',
            salary: '₹2L - ₹2.5L/ Month',
            location: 'Saudi Arabia',
            company: 'M/S. SUPER ASIA MANPOWER SERVICES',
            time: '3 weeks ago',
            avatarLetter: 'M',
            description: 'Leads planning, execution, and delivery of...',
          ),
          JobCard(
            title: 'Project Manager',
            salary: '₹3L - ₹4L/ Month',
            location: 'United Arab Emirates',
            company: 'GLOBAL TALENT SOLUTIONS',
            time: '1 week ago',
            avatarLetter: 'G',
            description: 'Oversee project timelines, budgets, and deliverables...',
          ),
          JobCard(
            title: 'Software Engineer',
            salary: '₹4L - ₹5L/ Month',
            location: 'Remote',
            company: 'TECH INNOVATORS INC.',
            time: '2 days ago',
            avatarLetter: 'T',
            description: 'Develop and maintain web applications using modern...',
          ),
        ],
      ),
    );
  }
}

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.sectionPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Our Services',
            style: AppTextStyles.h2,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: AppSpacing.xl),
          FeatureCard(
            icon: Icons.code,
            title: 'Custom Development',
            description: 'Tailored software solutions built with modern technologies.',
          ),
          SizedBox(height: AppSpacing.l),
          FeatureCard(
            icon: Icons.brush,
            title: 'UI/UX Design',
            description: 'User-centric designs that are both beautiful and functional.',
          ),
          SizedBox(height: AppSpacing.l),
          FeatureCard(
            icon: Icons.storage,
            title: 'Database Management',
            description: 'Secure and scalable database solutions to fit your needs.',
          ),
          SizedBox(height: AppSpacing.l),
          FeatureCard(
            icon: Icons.security,
            title: 'Cyber Security',
            description: 'Protect your digital assets with our advanced security measures.',
          ),
        ],
      ),
    );
  }
}
