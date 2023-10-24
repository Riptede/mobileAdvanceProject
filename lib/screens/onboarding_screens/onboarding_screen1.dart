import 'package:flutter/material.dart';

class OnboardingScreen1 extends StatefulWidget {
  final PageController controller;
  const OnboardingScreen1({super.key, required this.controller});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  RangeValues _currentRangeValues = const RangeValues(150, 2000);
  int startValue = 150;
  int endValue = 2000;
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
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Укажите ваши финансовые возможности на приготовление одного блюда',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.065,
                fontFamily: 'Onest',
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              'Стоимость блюда',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.055,
                  fontFamily: 'Onest',
                  fontWeight: FontWeight.bold),
            ),
            Text('$startValue₽ - $endValue₽',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontFamily: 'Onest',
                    color: Colors.orange))
          ]),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 10,
            thumbColor: Colors.orange,
            rangeThumbShape: const RoundRangeSliderThumbShape(
              enabledThumbRadius: 20, // Толщина границы
            ),
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            activeColor: Colors.orange,
            max: 2000,
            min: 150,
            inactiveColor: const Color.fromARGB(255, 236, 236, 236),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
                startValue = values.start.round();
                endValue = values.end.round();
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              '150₽',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontFamily: 'Onest',
              ),
            ),
            Text(
              '2000₽',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                fontFamily: 'Onest',
              ),
            ),
          ]),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Container(
                //Кнопка Войти
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    widget.controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease);
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
