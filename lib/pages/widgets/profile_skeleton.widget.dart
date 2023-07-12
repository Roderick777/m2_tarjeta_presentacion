import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class ProfileSkeleton extends StatefulWidget {
  const ProfileSkeleton({super.key});

  @override
  State<ProfileSkeleton> createState() => _ProfileSkeletonState();
}

class _ProfileSkeletonState extends State<ProfileSkeleton> {
  SkeletonLineStyle getSkeletonStyle(double height) {
    return SkeletonLineStyle(
      height: height,
      borderRadius: BorderRadius.circular(20),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250,
        child: Column(
          children: [
            const SkeletonAvatar(
              style: SkeletonAvatarStyle(
                  shape: BoxShape.circle, width: 130, height: 130),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 220,
              child: SkeletonLine(
                style: getSkeletonStyle(32),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              width: 140,
              child: SkeletonLine(
                style: getSkeletonStyle(20),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 200,
              child: SkeletonLine(
                style: getSkeletonStyle(18),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              width: 200,
              child: SkeletonLine(
                style: getSkeletonStyle(18),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 180,
              child: SkeletonLine(
                style: getSkeletonStyle(180),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
