import 'package:flutter/material.dart';
import 'package:webmobile2/logger.dart';

import 'onboarding_screens/onboarding_screen1.dart';
import 'onboarding_screens/onboarding_screen2.dart';
import 'onboarding_screens/onboarding_screen3.dart';
import 'onboarding_screens/onboarding_screen4.dart';
import 'onboarding_screens/onboarding_screen5.dart';
import 'onboarding_screens/onboarding_screen6.dart';
import 'onboarding_screens/onboarding_screen7.dart';
import 'onboarding_screens/onboarding_screen8.dart';
import 'onboarding_screens/onboarding_screen9.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();
  bool isBreakfast = false;
  bool isLunch = false;
  bool isDinner = false;
  bool isSnack = false;
  void _handleButtonPressed(
    bool isFirstButtonPressed,
    bool isSecondButtonPressed,
    bool isThirdButtonPressed,
    bool isFourthButtonPressed,
  ) {
    logg.i(
        'First button pressed: $isFirstButtonPressed; Second button pressed: $isSecondButtonPressed; Third button pressed: $isThirdButtonPressed; Fourth button pressed: $isFourthButtonPressed;');
    setState(() {
      isBreakfast = isFirstButtonPressed;
      isLunch = isSecondButtonPressed;
      isDinner = isThirdButtonPressed;
      isSnack = isFourthButtonPressed;
    });

    logg.i(
      'Breakfast: $isBreakfast; Lunch: $isLunch; Dinner: $isDinner; Snack: $isSnack;',
    );
    // Используйте переданные значения в Onboarding
    // Вы можете сохранить их в состоянии Onboarding или выполнить другую необходимую логику.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              OnboardingScreen1(controller: _controller),
              OnboardingScreen2(controller: _controller),
              OnboardingScreen3(
                  controller: _controller,
                  onButtonPressed: _handleButtonPressed),
              OnboardingScreen4(
                  controller: _controller,
                  isLunch: isLunch,
                  isDinner: isDinner,
                  isSnack: isSnack),
              OnboardingScreen5(
                  controller: _controller,
                  isDinner: isDinner,
                  isSnack: isSnack),
              OnboardingScreen6(controller: _controller, isSnack: isSnack),
              OnboardingScreen7(controller: _controller),
              OnboardingScreen8(controller: _controller),
              OnboardingScreen9(
                  controller: _controller,
                  isLunch: isLunch,
                  isDinner: isDinner,
                  isSnack: isSnack,
                  isBreakfast: isBreakfast),
            ],
          ),
        ],
      ),
    );
  }
}
