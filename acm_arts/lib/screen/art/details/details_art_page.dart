import 'package:acm_arts/domain/entities/art.dart';
import 'package:flutter/material.dart';

class DetailsArtPage extends StatefulWidget {
  final Art art;
  
  const DetailsArtPage({
    Key? key,
    required this.art,
  }) : super(key: key);

  @override
  State<DetailsArtPage> createState() => _DetailsArtPageState();
}

class _DetailsArtPageState extends State<DetailsArtPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('title')),
    );
  }
}
