import 'package:flutter/material.dart';

class SimpleLogo extends StatelessWidget {
  const SimpleLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xFFCD2545).withOpacity(0.9),
          shape: BoxShape.rectangle,
          border: Border.all(width: 2)),
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'ART \n INSTITVTE \n CHICAGO',
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
                shadows: [Shadow(color: Colors.black54, blurRadius: 30)],
                height: 2,
                fontWeight: FontWeight.w300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
