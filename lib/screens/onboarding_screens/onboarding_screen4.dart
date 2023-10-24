import 'package:flutter/material.dart';
import 'package:webmobile2/logger.dart';

class OnboardingScreen4 extends StatefulWidget {
  final PageController controller;
  final bool isLunch;
  final bool isDinner;
  final bool isSnack;

  const OnboardingScreen4({
    Key? key,
    required this.isLunch,
    required this.isDinner,
    required this.isSnack,
    required this.controller,
  }) : super(key: key);

  @override
  State<OnboardingScreen4> createState() => _OnboardingScreen4State();
}

class _OnboardingScreen4State extends State<OnboardingScreen4>
    with TickerProviderStateMixin {
  List<bool> isCheckedList = List.generate(9, (index) => false);
  late List<AnimationController> animationControllerList = List.generate(
      9,
      (index) => AnimationController(
            duration: const Duration(milliseconds: 300),
            vsync: this,
          ));

  @override
  Widget build(BuildContext context) {
    logg.i(
        ' BREAKFAST SCREEN: isLunch = ${widget.isLunch}; isDinner = ${widget.isDinner}; isSnack = ${widget.isSnack}');
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Что бы вы выбрали на завтрак',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.065,
                  fontFamily: 'Onest',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Wrap(
              runSpacing: 20,
              spacing: 10,
              alignment: WrapAlignment.start,
              children: [
                Column(
                  children: item(context, 0, 'images/waffles.png', 'Вафли'),
                ),
                Column(
                  children: item(context, 1, 'images/yogurt.png', 'Йогурт'),
                ),
                Column(
                  children: item(context, 2, 'images/eggs.png', 'Яйцо'),
                ),
                Column(
                  children: item(context, 3, 'images/crepe.png', 'Блины'),
                ),
                Column(
                  children: item(context, 4, 'images/cereal.png', 'Хлопья'),
                ),
                Column(
                  children:
                      item(context, 5, 'images/cheesecake.png', 'Сырники'),
                ),
                Column(
                  children: item(context, 6, 'images/sandwich.png', 'Сэндвич'),
                ),
                Column(
                  children: item(context, 7, 'images/casha.png', 'Каша'),
                ),
                Column(
                  children: item(context, 8, 'images/apples.png', 'Фрукты'),
                ),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.07,
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 30.0,
            ),
            child: ElevatedButton(
              onPressed: () {
                // Compare this snippet from lib/screens/onboarding_screens/onboarding_screen3.dart:
                // widget.controller.nextPage(
                //     duration: const Duration(milliseconds: 300),
                //     curve: Curves.linear);

                if (isCheckedList.contains(true)) {
                  if (widget.isLunch) {
                    widget.controller.animateToPage(4,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  } else if (widget.isDinner) {
                    widget.controller.animateToPage(5,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  } else if (widget.isSnack) {
                    widget.controller.animateToPage(6,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  } else {
                    widget.controller.animateToPage(7,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.orange, // Изменение цвета фона
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
                'Далее',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest-Medium'),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ],
      ),
    ));
  }

  List<Widget> item(
      BuildContext context, int index, String assetName, String text) {
    return [
      GestureDetector(
        onTap: () {
          setState(() {
            isCheckedList[index] = !isCheckedList[index];
            if (isCheckedList[index]) {
              animationControllerList[index].forward();
            } else {
              animationControllerList[index].reverse();
            }
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: 105,
            height: 105,
            child: Stack(children: [
              Image.asset(
                assetName,
                fit: BoxFit.cover,
              ),
              Align(
                child: AnimatedOpacity(
                  opacity: isCheckedList[index] ? 1.0 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: ScaleTransition(
                    scale: CurvedAnimation(
                      parent: animationControllerList[index],
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
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontFamily: 'Onest',
          ),
        ),
      )
    ];
  }
}
