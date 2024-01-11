import 'package:flutter/material.dart';
import '../../../../core/styles.dart';
import '../../../delivery_screen/presentation/views/widgets/pick_up_resturants_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Search Page',
              style: Styles.textstyle40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PickUpResturantCard(),
        ],
      ),
    );
  }
}
