import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.07,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/profile/ic_edit.png',
                    ),
                  ),
                  Text(
                    'Выйти',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontFamily: 'Onest',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.width * 0.25,
                child: Image.asset(
                  'images/profile/man.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              'Иван Димитров',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontFamily: 'Onest',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.22,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.orange,
                      Color.fromARGB(164, 255, 164, 1),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'keepfoód',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.035,
                              fontFamily: 'Onest',
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.height * 0.1,
                            height: MediaQuery.of(context).size.height * 0.04,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'family',
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.028,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'Испытайте все преимущества сервиса с подпиской Keepfoód family',
                        style: TextStyle(
                            height: 1.5,
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontFamily: 'Onest',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '349,00₽ ',
                            style: TextStyle(
                                height: 1.5,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.033,
                                fontFamily: 'Onest',
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '/мес',
                            style: TextStyle(
                                height: 1.5,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.02,
                                fontFamily: 'Onest',
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Settings');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * 0.07,
                      height: MediaQuery.of(context).size.height * 0.07,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 236, 236, 236),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'images/profile/Setting.png',
                        scale: 0.9,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Настройки',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.07,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/profile/alice.png',
                      scale: 0.9,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Яндекс.Алиса',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontFamily: 'Onest',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.07,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'images/Heart.png',
                      scale: 0.9,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Text(
                    'Избранное',
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.025,
                        fontFamily: 'Onest',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
