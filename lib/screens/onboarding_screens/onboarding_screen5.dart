import 'package:flutter/material.dart';
import 'package:webmobile2/logger.dart';

class OnboardingScreen5 extends StatefulWidget {
  final PageController controller;

  final bool isDinner;
  final bool isSnack;

  const OnboardingScreen5({
    Key? key,
    required this.isDinner,
    required this.isSnack,
    required this.controller,
  }) : super(key: key);

  @override
  State<OnboardingScreen5> createState() => _OnboardingScreen5State();
}

class _OnboardingScreen5State extends State<OnboardingScreen5>
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
        ' LUNCH SCREEN: isDinner = ${widget.isDinner}; isSnack = ${widget.isSnack}');
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
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Что бы вы выбрали на обед',
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
                  children: item(context, 0, 'images/soup.png', 'Суп'),
                ),
                Column(
                  children: item(context, 1, 'images/paste.png', 'Паста'),
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCheckedList[2] = !isCheckedList[2];
                        if (isCheckedList[2]) {
                          animationControllerList[2].forward();
                        } else {
                          animationControllerList[2].reverse();
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
                            'images/complex lunch.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
                            child: AnimatedOpacity(
                              opacity: isCheckedList[2] ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 200),
                              child: ScaleTransition(
                                scale: CurvedAnimation(
                                  parent: animationControllerList[2],
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
                    child: Column(
                      children: [
                        Text(
                          'Комплексный',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.037,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'обед',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCheckedList[3] = !isCheckedList[3];
                        if (isCheckedList[3]) {
                          animationControllerList[3].forward();
                        } else {
                          animationControllerList[3].reverse();
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
                            'images/fish.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
                            child: AnimatedOpacity(
                              opacity: isCheckedList[3] ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 200),
                              child: ScaleTransition(
                                scale: CurvedAnimation(
                                  parent: animationControllerList[3],
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
                    child: Column(
                      children: [
                        Text(
                          'Рыба',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'и гарнир',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05,
                            fontFamily: 'Onest',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Column(
                  children: item(context, 4, 'images/rolls.png', 'Роллы'),
                ),
                Column(
                  children: item(context, 5, 'images/plov.png', 'Плов'),
                ),
                Column(
                  children: item(context, 6, 'images/steak.png', 'Стейк'),
                ),
                Column(
                  children: item(context, 7, 'images/salad.png', 'Салат'),
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCheckedList[8] = !isCheckedList[8];
                        if (isCheckedList[8]) {
                          animationControllerList[8].forward();
                        } else {
                          animationControllerList[8].reverse();
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
                            'images/vegetable lunch.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
                            child: AnimatedOpacity(
                              opacity: isCheckedList[8] ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 200),
                              child: ScaleTransition(
                                scale: CurvedAnimation(
                                  parent: animationControllerList[8],
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
                    child: Column(
                      children: [
                        Text(
                          'Овощной',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'обед',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
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
                if (isCheckedList.contains(true)) {
                  if (widget.isDinner) {
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
