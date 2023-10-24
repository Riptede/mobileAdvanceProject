import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isBreakfastChosen = true;
  bool isLunchChosen = false;
  bool isDinnerChosen = false;
  bool isSnackChosen = false;
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Рецепт на ближайший приём пищи:',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontFamily: 'Onest',
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSnackChosen) {
                          } else {
                            isDinnerChosen = false;
                            isBreakfastChosen = false;
                            isLunchChosen = false;
                            isSnackChosen = !isSnackChosen;
                          }
                        });
                      },
                      child: Text(
                        'перекус',
                        style: TextStyle(
                          color: isSnackChosen
                              ? Colors.orange
                              : const Color.fromARGB(200, 200, 200, 200),
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isBreakfastChosen) {
                          } else {
                            isDinnerChosen = false;
                            isBreakfastChosen = !isBreakfastChosen;
                            isLunchChosen = false;
                            isSnackChosen = false;
                          }
                        });
                      },
                      child: Text(
                        'завтрак',
                        style: TextStyle(
                          color: isBreakfastChosen
                              ? Colors.orange
                              : const Color.fromARGB(200, 200, 200, 200),
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isLunchChosen) {
                          } else {
                            isDinnerChosen = false;
                            isBreakfastChosen = false;
                            isLunchChosen = !isLunchChosen;
                            isSnackChosen = false;
                          }
                        });
                      },
                      child: Text(
                        'обед',
                        style: TextStyle(
                          color: isLunchChosen
                              ? Colors.orange
                              : const Color.fromARGB(200, 200, 200, 200),
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isDinnerChosen) {
                          } else {
                            isDinnerChosen = !isDinnerChosen;
                            isBreakfastChosen = false;
                            isLunchChosen = false;
                            isSnackChosen = false;
                          }
                        });
                      },
                      child: Text(
                        'ужин',
                        style: TextStyle(
                          color: isDinnerChosen
                              ? Colors.orange
                              : const Color.fromARGB(200, 200, 200, 200),
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ])),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Article');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'images/main_screen.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    BlurryContainer(
                      color: Colors.white.withOpacity(0.4),
                      blur: 7,
                      width: 90,
                      height: 60,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 90,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            '15 мин',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontFamily: 'Onest',
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: BlurryContainer(
                          color: Colors.white.withOpacity(0.4),
                          blur: 7,
                          width: 60,
                          height: 60,
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Image.asset(
                                  'images/ic_like.png',
                                  color: isLiked ? Colors.orange : Colors.white,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.25,
                    left: 0,
                    right: 0,
                    child: Column(children: [
                      Text(
                        'Венские вафли с медом и черникой',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text(
                        'Яйца • Мука • Черника • Сахар • Сливочное масло • Молоко • Соль • Разрыхлитель',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontFamily: 'Onest',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              item(context, 'Калорийность', 676, 'ккал'),
                              item(context, 'Белки', 10, 'грамм'),
                              item(context, 'Жиры', 46, 'грамм'),
                              item(context, 'Углеводы', 55, 'грамм'),
                            ]),
                      )
                    ]))
              ]),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              'Подборки',
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.06,
                  fontFamily: 'Onest',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
        ]),
      ),
    );
  }

  Column item(BuildContext context, String title, int num, String weight) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.03,
            fontFamily: 'Onest',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          num.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width * 0.06,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          weight,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.04,
            fontFamily: 'Onest',
          ),
        ),
      ],
    );
  }
}
