import 'package:flutter/material.dart';

class SearchResultTitle extends StatelessWidget {
  const SearchResultTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Text(
        'Search Result:',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }
}
