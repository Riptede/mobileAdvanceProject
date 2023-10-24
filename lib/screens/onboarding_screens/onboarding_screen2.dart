import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatefulWidget {
  final PageController controller;
  const OnboardingScreen2({super.key, required this.controller});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
  bool isButtonPressed3 = false;
  bool isButtonPressed4 = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            'Как вы оцениваете свои кулинарные способности',
            style: TextStyle(
                fontFamily: 'Onest',
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * 0.065),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isButtonPressed1 = !isButtonPressed1;
                  isButtonPressed2 = false;
                  isButtonPressed3 = false;
                  isButtonPressed4 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: isButtonPressed1
                    ? Colors.orange
                    : const Color.fromARGB(255, 236, 236, 236),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Я не очень умею готовить, смогу приготовить простые блюда',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isButtonPressed1 ? Colors.white : Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontFamily: 'Onest',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isButtonPressed2 = !isButtonPressed2;
                  isButtonPressed1 = false;
                  isButtonPressed3 = false;
                  isButtonPressed4 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: isButtonPressed2
                    ? Colors.orange
                    : const Color.fromARGB(255, 236, 236, 236),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Я уже неплохо разбираюсь на кухне, умею готовить средние рецепты, но что-то сложное - не для мен',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isButtonPressed2 ? Colors.white : Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontFamily: 'Onest',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isButtonPressed3 = !isButtonPressed3;
                  isButtonPressed1 = false;
                  isButtonPressed2 = false;
                  isButtonPressed4 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: isButtonPressed3
                    ? Colors.orange
                    : const Color.fromARGB(255, 236, 236, 236),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Я хорошо умею готовить, переодически готовлю сложные блюда',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isButtonPressed3 ? Colors.white : Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontFamily: 'Onest',
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isButtonPressed4 = !isButtonPressed4;
                  isButtonPressed1 = false;
                  isButtonPressed2 = false;
                  isButtonPressed3 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shadowColor: Colors.transparent,
                backgroundColor: isButtonPressed4
                    ? Colors.orange
                    : const Color.fromARGB(255, 236, 236, 236),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text(
                'Я - шеф-повар, умею готовить блюда любой сложности, уверенно чувствую себя на кухне',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isButtonPressed4 ? Colors.white : Colors.black,
                  fontSize: MediaQuery.of(context).size.width * 0.04,
                  fontFamily: 'Onest',
                ),
              ),
            ),
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
                    if (isButtonPressed1 ||
                        isButtonPressed2 ||
                        isButtonPressed3 ||
                        isButtonPressed4) {
                      widget.controller.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(seconds: 1),
                          backgroundColor:
                              Colors.orange, // Изменение цвета фона
                          // Изменение цвета текста
                          content: Text(
                              'Пожалуйста, выберите подходящий вам вариант'),
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
            ),
          ),
        ),
      ]),
    );
  }
}
