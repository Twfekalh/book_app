import 'package:book_c/Features/Home/presentation/views/widgets/Best_Seller_List_View_item.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/Book_Details_Section.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/Box_Action.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/Similar_Book_Section.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/feature_List_View_Item.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/similer_list_view.dart';
import 'package:book_c/core/utils/styles.dart';
import 'package:book_c/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 37,
                  ),
                ),
                SimilarBookSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
