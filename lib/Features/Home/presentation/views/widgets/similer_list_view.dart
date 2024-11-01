import 'package:book_c/Features/Home/presentation/views/widgets/feature_List_View_Item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: FeatureListViewItem());
          }),
    );
  }
}
