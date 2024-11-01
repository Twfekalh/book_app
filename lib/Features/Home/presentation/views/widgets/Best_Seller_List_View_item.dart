import 'package:book_c/core/utils/app_router.dart';
import 'package:book_c/core/utils/assets.dart';
import 'package:book_c/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    //navegate from here gest..
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.7 / 4,
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
              width: 4,
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
                    height: 5,
                    width: 3,
                  ),
                  const Row(
                    children: [
                      Text(
                        'data ',
                        style: Styles.textStyle20,
                      ),
                      Spacer(),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
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
