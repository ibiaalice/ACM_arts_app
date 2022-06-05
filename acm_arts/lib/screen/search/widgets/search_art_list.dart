import 'package:acm_arts/domain/entities/art.dart';
import 'package:acm_arts/screen/art/details/details_art_page.dart';
import 'package:animated_image_list/AnimatedImageList.dart';
import 'package:flutter/material.dart';

class SearchArtList extends StatelessWidget {
  final List<String> imagesUrl;
  final List<Art?> arts;

  const SearchArtList({
    Key? key,
    required this.imagesUrl,
    required this.arts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2000,
      width: MediaQuery.of(context).size.width,
      child: AnimatedImageList(
        builder: (context, index, progress) {
          return Positioned.directional(
            textDirection: TextDirection.ltr,
            bottom: 15,
            start: 25,
            child: Opacity(
              opacity: progress > 1 ? (2 - progress) : progress,
              child: TextButton(
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => DetailsArtPage(
                      art: arts[index]!,
                    ),
                  ),
                ),
                child: Text(
                  arts[index]!.title!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          );
        },
        images: imagesUrl,
        scrollDirection: Axis.vertical,
        itemExtent: 200,
        maxExtent: 400,
      ),
    );
  }
}
