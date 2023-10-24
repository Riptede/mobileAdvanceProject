import 'package:flutter/material.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: Image.asset(
                    'images/article_image.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 20,
                    right: 20,
                    top: MediaQuery.of(context).size.width * 0.7,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#тепло',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '#теплые напитки',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '#зима',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '#глинтвейн',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height * 0.02,
                                  fontFamily: 'Onest',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          'Подборка напитков, чтобы согреться зимой',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.04,
                              fontFamily: 'Onest',
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'В этой статье будут описаны 10 рецептов зимних напитков, которые можно сделать дома, чтобы согреться в домашнем уюте.',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.022,
                  fontFamily: 'Onest',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '1. Имбирно-пряничный латте',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Нам понадобится:',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.022,
                  fontFamily: 'Onest',
                ),
              ),
            ),
            listItem(context, '2 стакана воды'),
            listItem(context, '1,5 стакана мелкого сахара'),
            listItem(context, '2,5 чайной ложки имбиря'),
            listItem(context, '0,5 чайной ложки молотой корицы'),
            listItem(context, '0,5 чайной ложки ванилина'),
            listItem(context, 'Маленькая чашка экспрессо'),
            listItem(context, 'Стакан молока'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '''Все ингредиенты сиропа нужно поместить в небольшую кастрюлю. Помешивая, доведите до кипения, затем уменьшаем огонь, оставляем побулькивать минут 15 и снимаем с плиты. Латте готовится с применение вспененного молока. Но можно просто подогреть молоко, не доводя его до кипения, а напиток сверху просто украсить взбитыми сливками. Самый простой способ получить вспененное молоко — это взбить его с помощью блендера. Взбивать молоко нужно в подогретом состоянии. Более жирное молоко даст более густую пену. В латте соотношение кофе к молоку 1 к 3. В кружку или стакан наливаем кофе, далее четверть получившегося сиропа и потом уже молоко. Перемешайте и можно пить, пока это все не остыло.''',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.022,
                  fontFamily: 'Onest',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '2. Безалкогольный пунш',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontFamily: 'Onest',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Нам понадобится:',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.022,
                  fontFamily: 'Onest',
                ),
              ),
            ),
            listItem(context, '22 апельсина'),
            listItem(context, '1 яблоко'),
            listItem(context, '1 лимон'),
            listItem(context, '100 грамм свежей или замороженной клубники'),
            listItem(context, '150 грамм сахара'),
            listItem(context, '1 щепотка корицы'),
            listItem(context, '1 щепотка кардамона'),
            listItem(context, '1 щепотка сушеного имбиря'),
            listItem(context, '400 мл крепкого чая'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                '''Все фрукты нужно нарезать ломтиками и вместе с ягодами  переложить в эмалированную или нержавеющую посуду с крышкой. Потом нужно засыпать сахаром и оставить на 30 минут. Затем осторожно перемешать, добавить специи и залить горячим чаем. После этого нужно накрыть посуду крышкой и оставить на 1 час в теплом месте. Когда пройдет час нужно процедить полученный безалкогольный пунш и сразу же разлить по бокалам.''',
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height * 0.022,
                  fontFamily: 'Onest',
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '18 просмотров',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 219, 219, 219),
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                      fontFamily: 'Onest',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/Chat.png',
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                          });
                        },
                        child: Icon(
                          Icons.favorite_outlined,
                          color: isLiked
                              ? Colors.orange
                              : const Color.fromARGB(255, 219, 219, 219),
                          size: MediaQuery.of(context).size.height * 0.04,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }

  Padding listItem(BuildContext context, String text) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          '• $text',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.022,
            fontFamily: 'Onest',
          ),
        ));
  }
}
