import 'package:flutter/material.dart';

class OnboardingScreen7 extends StatefulWidget {
  final PageController controller;

  const OnboardingScreen7({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<OnboardingScreen7> createState() => _OnboardingScreen7State();
}

class _OnboardingScreen7State extends State<OnboardingScreen7>
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
                ],
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Что бы вы выбрали на перекус',
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
                  children:
                      item(context, 0, 'images/snack/chocolate.png', 'Шоколад'),
                ),
                Column(children: [
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
                      child: SizedBox(
                        width: 105,
                        height: 105,
                        child: Stack(children: [
                          Image.asset(
                            'images/snack/candy bar.png',
                            fit: BoxFit.cover,
                          ),
                          Align(
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
                        ]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Злаковый',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'батончик',
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
                            'images/snack/fruits.png',
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
                          'Свежие',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontFamily: 'Onest',
                          ),
                        ),
                        Text(
                          'фрукты',
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
                      item(context, 3, 'images/snack/smothie.png', 'Смузи'),
                ),
                Column(
                  children:
                      item(context, 4, 'images/snack/cookie.png', 'Печенье'),
                ),
                Column(
                  children: item(
                      context, 5, 'images/snack/marmelade.png', 'Мармелад'),
                ),
                Column(
                  children: item(
                      context, 6, 'images/snack/french fries.png', 'Fast food'),
                ),
                Column(
                  children: item(context, 7, 'images/snack/nuts.png', 'Орехи'),
                ),
                Column(
                  children:
                      item(context, 8, 'images/snack/bread.png', 'Хлебцы'),
                ),
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
                  widget.controller.animateToPage(7,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
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
