import 'package:flutter/material.dart';

class OnboardingScreen9 extends StatefulWidget {
  final PageController controller;
  final bool isBreakfast;
  final bool isLunch;
  final bool isDinner;
  final bool isSnack;
  const OnboardingScreen9(
      {super.key,
      required this.controller,
      required this.isBreakfast,
      required this.isLunch,
      required this.isDinner,
      required this.isSnack});

  @override
  State<OnboardingScreen9> createState() => _OnboardingScreen9State();
}

class _OnboardingScreen9State extends State<OnboardingScreen9>
    with TickerProviderStateMixin {
  List<bool> isCheckedList = List.generate(2, (index) => false);
  late List<AnimationController> animationControllerList = List.generate(
      2,
      (index) => AnimationController(
            duration: const Duration(milliseconds: 300),
            vsync: this,
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Что бы вы выбрали?',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
                fontFamily: 'Onest',
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isCheckedList[0] = !isCheckedList[0];
                    if (isCheckedList[0]) {
                      animationControllerList[0].forward();
                    } else {
                      animationControllerList[0].reverse();
                    }
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: AspectRatio(
                    aspectRatio: 2.3,
                    child: Stack(children: [
                      Image.asset(
                        'images/drink/cofee.png',
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: AnimatedOpacity(
                          opacity: isCheckedList[0] ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 200),
                          child: ScaleTransition(
                            scale: CurvedAnimation(
                              parent: animationControllerList[0],
                              curve: Curves.ease,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Кофе',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontFamily: 'Onest',
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isCheckedList[1] = !isCheckedList[1];
                    if (isCheckedList[1]) {
                      animationControllerList[1].forward();
                    } else {
                      animationControllerList[1].reverse();
                    }
                  });
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(children: [
                    Image.asset(
                      'images/drink/tea.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: AnimatedOpacity(
                          opacity: isCheckedList[1] ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 200),
                          child: ScaleTransition(
                            scale: CurvedAnimation(
                              parent: animationControllerList[1],
                              curve: Curves.ease,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text(
                  'Чай',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontFamily: 'Onest',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Container(
                //Кнопка Войти
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (isCheckedList.contains(true)) {
                      Navigator.pushNamed(context, '/Home', arguments: {
                        'isBreakfast': widget.isBreakfast,
                        'isLunch': widget.isLunch,
                        'isDinner': widget.isDinner,
                        'isSnack': widget.isSnack
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                          backgroundColor:
                              Colors.orange, // Изменение цвета фона
                          // Изменение цвета текста
                          content:
                              Text('Пожалуйста, выберите хотя бы один вариант'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Завершить',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        fontFamily: 'Onest-Medium'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
