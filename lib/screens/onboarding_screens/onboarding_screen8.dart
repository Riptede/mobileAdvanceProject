import 'package:flutter/material.dart';

class OnboardingScreen8 extends StatefulWidget {
  final PageController controller;
  const OnboardingScreen8({super.key, required this.controller});

  @override
  State<OnboardingScreen8> createState() => _OnboardingScreen8State();
}

class _OnboardingScreen8State extends State<OnboardingScreen8>
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
                      color: Colors.orange,
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
              'На какие продукты у вас есть аллергия',
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
            // поле email

            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: MediaQuery.of(context).size.height * 0.025),
                isDense: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),

                filled: true, // разрешить заполнение
                fillColor: const Color.fromARGB(248, 241, 241, 241),
                hintText: 'Введите название продукта',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.037,
                    color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Wrap(
              runSpacing: 20,
              spacing: 10,
              alignment: WrapAlignment.start,
              children: [
                Column(
                  children: item(context, 0, 'images/alerg/eggs.png', 'Яйца'),
                ),
                Column(
                  children: item(context, 1, 'images/alerg/milk.png', 'Молоко'),
                ),
                Column(
                  children:
                      item(context, 2, 'images/alerg/chocolate.png', 'Шоколад'),
                ),
                Column(
                  children: item(context, 3, 'images/alerg/fish.png', 'Рыба'),
                ),
                Column(
                  children: item(
                      context, 4, 'images/alerg/strawbery.png', 'Клубника'),
                ),
                Column(
                  children: item(context, 5, 'images/alerg/nuts.png', 'Орехи'),
                ),
              ]),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.09,
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
