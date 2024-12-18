import 'package:book_c/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImage,
              )),
        ),
      ),
    );
  }
}
