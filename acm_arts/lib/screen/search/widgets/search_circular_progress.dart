import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchCircularProgress extends StatelessWidget {
  const SearchCircularProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 100),
      child: CircularProgressIndicator(
        backgroundColor: Colors.grey,
        color: Color(0xFFCD2545),
      ),
    );
  }
}
