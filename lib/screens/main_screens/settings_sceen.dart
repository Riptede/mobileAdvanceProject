import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<bool> _switchValues = [
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'images/settings_imgs/left_arrow.png',
                      scale: 0.9,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  'Настройки',
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.04,
                      fontFamily: 'Onest',
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'ПРИВАТНОСТЬ',
                style: TextStyle(
                    color: const Color.fromARGB(255, 156, 156, 156),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Приватный аккаунт',
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.025,
                                fontFamily: 'Onest',
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Text(
                              'Ваш аккаунт будет доступен к просмотру только вашим друзьям',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 156, 156, 156),
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.018,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold)),
                        )
                      ]),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.08,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: CupertinoSwitch(
                        applyTheme: true,
                        value: _switchValues[0],
                        thumbColor: Colors.white,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          setState(() {
                            _switchValues[0] = value;
                          });
                        },
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'УВЕДОМЛЕНИЯ',
                style: TextStyle(
                    color: const Color.fromARGB(255, 156, 156, 156),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Push-уведомления',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.08,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: CupertinoSwitch(
                        applyTheme: true,
                        value: _switchValues[1],
                        thumbColor: Colors.white,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          setState(() {
                            _switchValues[1] = value;
                          });
                        },
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'ЯНДЕКС АЛИСА',
                style: TextStyle(
                    color: const Color.fromARGB(255, 156, 156, 156),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Голосовые команды',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.08,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: CupertinoSwitch(
                        applyTheme: true,
                        value: _switchValues[2],
                        thumbColor: Colors.white,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          setState(() {
                            _switchValues[2] = value;
                          });
                        },
                      ),
                    ),
                  )
                ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'БЕЗОПАСНОСТЬ',
                style: TextStyle(
                    color: const Color.fromARGB(255, 156, 156, 156),
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Поменять пароль',
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontFamily: 'Onest',
                          fontWeight: FontWeight.bold)),
                  Image.asset(
                    'images/settings_imgs/right_arrow.png',
                    scale: 0.85,
                  ),
                ]),
          ),
        ]));
  }
}
