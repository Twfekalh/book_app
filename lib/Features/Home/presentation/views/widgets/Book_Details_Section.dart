import 'package:book_c/Features/Home/presentation/views/widgets/Best_Seller_List_View_item.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/Box_Action.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/feature_List_View_Item.dart';
import 'package:book_c/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .15),
            child: const FeatureListViewItem()),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'the book deaily',
          style: Styles.textStyle30,
        ),
        const Text(
          'the book ',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
