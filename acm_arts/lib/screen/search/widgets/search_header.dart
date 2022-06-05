import 'package:acm_arts/screen/search/widgets/search_title.dart';
import 'package:acm_arts/screen/widgets/simple_logo.dart';
import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: SimpleLogo(),
        ),
        SearchTitle(),
      ],
    );
  }
}
