import 'package:acm_arts/screen/home/home_store.dart';
import 'package:acm_arts/screen/search/search_page.dart';
import 'package:acm_arts/screen/widgets/animated_logo.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final store = HomeStore();
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );
    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionBubble(
        iconData: Icons.brightness_1_outlined,
        backGroundColor: const Color(0xFFCD2545),
        animation: _animation,
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        items: [
          Bubble(
            title: 'Reload',
            iconColor: Colors.white,
            bubbleColor: const Color(0xFFCD2545),
            icon: Icons.replay_outlined,
            titleStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
            onPress: () {
              _animationController.reverse();
              store.onInit();
            },
          ),
          Bubble(
            title: 'Search Arts',
            iconColor: Colors.white,
            bubbleColor: const Color(0xFFCD2545),
            icon: Icons.search_outlined,
            titleStyle: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
            onPress: () {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
          ),
        ],
        iconColor: Colors.white,
      ),
      body: Observer(
        builder: (context) {
          return Stack(
            children: [
              if (store.isLoading)
                const Center(
                  child: CircularProgressIndicator(),
                ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    if (store.art != null) Image.network(store.art!.imageId!),
                    if (store.art2 != null) Image.network(store.art2!.imageId!),
                    if (store.art3 != null) Image.network(store.art3!.imageId!),
                  ],
                ),
              ),
              const AnimatedLogo(),
            ],
          );
        },
      ),
    );
  }
}
