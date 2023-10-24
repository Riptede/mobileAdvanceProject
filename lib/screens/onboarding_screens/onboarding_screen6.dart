import 'package:flutter/material.dart';
import 'package:webmobile2/logger.dart';

class OnboardingScreen6 extends StatefulWidget {
  final bool isSnack;
  final PageController controller;
  const OnboardingScreen6({
    Key? key,
    required this.isSnack,
    required this.controller,
  }) : super(key: key);

  @override
  State<OnboardingScreen6> createState() => _OnboardingScreen6State();
}

class _OnboardingScreen6State extends State<OnboardingScreen6>
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
    logg.i(' DINNER SCREEN: isSnack = ${widget.isSnack}');
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
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Что бы вы выбрали на ужин',
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
                Column(children: [
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
                      child: SizedBox(
                        width: 105,
                        height: 105,
                        child: Stack(children: [
                          Image.asset(
                            'images/dinner/steak_dinner.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
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
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Стейк',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'и гарнир',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Column(
                  children:
                      item(context, 1, 'images/dinner/naget.png', 'Нагетсы'),
                ),
                Column(
                  children: item(
                      context, 2, 'images/dinner/salad_dinner.png', 'Салат'),
                ),
                Column(
                  children:
                      item(context, 3, 'images/dinner/chicken.png', 'Курица'),
                ),
                Column(
                  children:
                      item(context, 4, 'images/dinner/pizza.png', 'Пицца'),
                ),
                Column(
                  children:
                      item(context, 5, 'images/dinner/pelmeni.png', 'Пельмени'),
                ),
                Column(children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isCheckedList[6] = !isCheckedList[6];
                        if (isCheckedList[6]) {
                          animationControllerList[6].forward();
                        } else {
                          animationControllerList[6].reverse();
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
                            'images/dinner/potato.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
                            child: AnimatedOpacity(
                              opacity: isCheckedList[6] ? 1.0 : 0.0,
                              duration: const Duration(milliseconds: 200),
                              child: ScaleTransition(
                                scale: CurvedAnimation(
                                  parent: animationControllerList[6],
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
                          'Печёный',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'картофель',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Column(
                  children: item(
                      context, 7, 'images/dinner/crepe_dinner.png', 'Блины'),
                ),
                Column(
                  children: item(
                      context, 8, 'images/dinner/paste_dinner.png', 'Паста'),
                ),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
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
                  if (widget.isSnack) {
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
            fontSize: MediaQuery.of(context).size.width * 0.045,
            fontFamily: 'Onest',
          ),
        ),
      )
    ];
  }
}
