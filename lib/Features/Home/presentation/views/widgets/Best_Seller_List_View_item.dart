import 'package:book_c/core/utils/assets.dart';
import 'package:book_c/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    )),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: const Text(
                    'harry pooter and the free',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  ' data data ',
                  style: Styles.textStyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                const Row(
                  children: [
                    Text(
                      'data ',
                      style: Styles.textStyle20,
                    ),
                    Spacer(),
                    BrandStar(),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BrandStar extends StatelessWidget {
  const BrandStar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(width: 6.3),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        SizedBox(width: 5),
        Text(
          '(224)',
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
