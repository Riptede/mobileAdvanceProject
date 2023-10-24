import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatefulWidget {
  final PageController controller;
  final Function(bool, bool, bool, bool) onButtonPressed;
  const OnboardingScreen3({
    super.key,
    required this.controller,
    required this.onButtonPressed,
  });

  @override
  State<OnboardingScreen3> createState() => _OnboardingScreen3State();
}

class _OnboardingScreen3State extends State<OnboardingScreen3> {
  bool isFirstButtonPressed = false;
  bool isSecondButtonPressed = false;
  bool isThirdButtonPressed = false;
  bool isFourthButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
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
        Text(
          'Укажите ваши приёмы пищи',
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.065,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CheckboxListTile(
              visualDensity: const VisualDensity(vertical: 3.0),
              activeColor: Colors.white,
              checkColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              selectedTileColor: isFirstButtonPressed
                  ? Colors.orange
                  : const Color.fromARGB(255, 236, 236, 236),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              selected: true,
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: isFirstButtonPressed,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'Завтрак',
                style: TextStyle(
                    color: isFirstButtonPressed ? Colors.white : Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest'),
              ),
              onChanged: (bool? value) {
                setState(() {
                  isFirstButtonPressed = value!;
                  widget.onButtonPressed(
                    isFirstButtonPressed,
                    isSecondButtonPressed,
                    isThirdButtonPressed,
                    isFourthButtonPressed,
                  );
                });
              }),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CheckboxListTile(
              visualDensity: const VisualDensity(vertical: 3.0),
              activeColor: Colors.white,
              checkColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              selectedTileColor: isSecondButtonPressed
                  ? Colors.orange
                  : const Color.fromARGB(255, 236, 236, 236),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              selected: true,
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: isSecondButtonPressed,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'Обед',
                style: TextStyle(
                    color: isSecondButtonPressed ? Colors.white : Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest'),
              ),
              onChanged: (bool? value) {
                setState(() {
                  isSecondButtonPressed = value!;
                  widget.onButtonPressed(
                    isFirstButtonPressed,
                    isSecondButtonPressed,
                    isThirdButtonPressed,
                    isFourthButtonPressed,
                  );
                });
              }),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CheckboxListTile(
              visualDensity: const VisualDensity(vertical: 3.0),
              activeColor: Colors.white,
              checkColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              selectedTileColor: isThirdButtonPressed
                  ? Colors.orange
                  : const Color.fromARGB(255, 236, 236, 236),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              selected: true,
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: isThirdButtonPressed,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'Ужин',
                style: TextStyle(
                    color: isThirdButtonPressed ? Colors.white : Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest'),
              ),
              onChanged: (bool? value) {
                setState(() {
                  isThirdButtonPressed = value!;
                  widget.onButtonPressed(
                    isFirstButtonPressed,
                    isSecondButtonPressed,
                    isThirdButtonPressed,
                    isFourthButtonPressed,
                  );
                });
              }),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: CheckboxListTile(
              visualDensity: const VisualDensity(vertical: 3.0),
              activeColor: Colors.white,
              checkColor: Colors.orange,
              side: const BorderSide(color: Colors.grey),
              selectedTileColor: isFourthButtonPressed
                  ? Colors.orange
                  : const Color.fromARGB(255, 236, 236, 236),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              selected: true,
              checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
              value: isFourthButtonPressed,
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                'Перекус',
                style: TextStyle(
                    color: isFourthButtonPressed ? Colors.white : Colors.black,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest'),
              ),
              onChanged: (bool? value) {
                setState(() {
                  isFourthButtonPressed = value!;
                  widget.onButtonPressed(
                    isFirstButtonPressed,
                    isSecondButtonPressed,
                    isThirdButtonPressed,
                    isFourthButtonPressed,
                  );
                });
              }),
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
                    if (isFirstButtonPressed) {
                      widget.controller.animateToPage(3,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    } else if (isSecondButtonPressed) {
                      widget.controller.animateToPage(4,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    } else if (isThirdButtonPressed) {
                      widget.controller.animateToPage(5,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    } else if (isFourthButtonPressed) {
                      widget.controller.animateToPage(6,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
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
      ],
    ));
  }
}
