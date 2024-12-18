import 'package:book_c/Features/Home/presentation/views/widgets/Best_Seller_List_View_item.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/feature_List_View_Item.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/Featured_List_View.dart';
import 'package:book_c/Features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book_c/core/utils/assets.dart';
import 'package:book_c/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: CustomAppBar()),
              FeaturedListView(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListViewItem()),
        ),
      ],
    );
  }
}
