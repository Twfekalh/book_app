import 'package:book_c/Features/Home/presentation/views/widgets/Best_Seller_List_View_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem());
          }),
    );
  }
}
