import 'package:ana_zah2t/home_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  //value from 0 to 1
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimatiom();
    navigatToHome();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset('assets/images/weather.jpg')),
        const SizedBox(
          height: 4,
        ),
        AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Weather App',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              );
            })
      ],
    );
  }

  void initSlidingAnimatiom() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigatToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        // ignore: prefer_const_constructors
        return MyWidget();
      }));
    });
  }
}
