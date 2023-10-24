import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  // Создание контроллера для поля ввода email
  final _emailController = TextEditingController();

  // Создание контроллера для поля ввода пароля
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.53,
              child: Image.asset(
                'images/loginBG.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: -30,
              left: MediaQuery.of(context).size.width * 0.005,
              right: MediaQuery.of(context).size.width * 0.005,
              child: Container(
                height: 50, // Высота белого выступа
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100)),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ]),
          Text(
            'Войти',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.045,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            // поле email

            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              controller: _emailController,
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
                hintText: 'Email',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.037,
                    color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.025,
          ),
          Padding(
            // поле пароль
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextField(
              controller: _passwordController,
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
                hintText: 'Введите пароль',
                hintStyle: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.037,
                    color: Colors.grey),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Container(
            //Кнопка Войти
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.07,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: ElevatedButton(
              onPressed: () {
                final email = _emailController.text.trim();
                final password = _passwordController.text.trim();

                if (email.isNotEmpty && password.isNotEmpty) {
                  Navigator.pushNamed(context, '/Onboarding');
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      duration: Duration(seconds: 1),
                      backgroundColor: Colors.orange, // Изменение цвета фона
                      // Изменение цвета текста
                      content: Text('Пожалуйста, заполните все поля'),
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
                'Войти',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest-Medium'),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                  text: 'Нет аккаунта? ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width * 0.04,
                    fontFamily: 'Onest-Medium',
                  ),
                  children: [
                    TextSpan(
                      text: 'Зарегистрируйтесь!',
                      style: const TextStyle(
                        color: Colors.orange,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
