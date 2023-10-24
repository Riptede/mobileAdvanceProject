import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.74,
                height: MediaQuery.of(context).size.height * 0.07,
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
                    prefixIcon: Image.asset('images/ic_search.png'),
                    filled: true, // разрешить заполнение
                    fillColor: const Color.fromARGB(248, 241, 241, 241),
                    hintText: 'Введите название рецепта',
                    hintStyle: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.037,
                        color: Colors.grey),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('images/ic_filter.png'),
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
            'Категории по продуктам',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.03,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.width * 0.34 + 20,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              listItem(context, 'images/alerg/eggs.png', 'Яйца'),
              const SizedBox(
                width: 10,
              ),
              listItem(context, 'images/alerg/milk.png', 'Молоко'),
              const SizedBox(
                width: 10,
              ),
              listItem(context, 'images/alerg/chocolate.png', 'Шоколад'),
              const SizedBox(
                width: 10,
              ),
              listItem(context, 'images/alerg/chocolate.png', 'Шоколад'),
              const SizedBox(
                width: 10,
              ),
              listItem(context, 'images/alerg/chocolate.png', 'Шоколад'),
              const SizedBox(
                width: 10,
              ),
              listItem(context, 'images/alerg/chocolate.png', 'Шоколад'),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Подборки',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.03,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Container(
          padding: const EdgeInsets.only(left: 20),
          height: MediaQuery.of(context).size.height * 0.3 + 20,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            bigItemList(context),
            const SizedBox(
              width: 10,
            ),
            bigItemList(context),
            const SizedBox(
              width: 10,
            ),
            bigItemList(context),
            const SizedBox(
              width: 10,
            ),
            bigItemList(context),
            const SizedBox(
              width: 10,
            ),
          ]),
        )
      ]),
    ));
  }

  Stack bigItemList(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: SizedBox(
          width: MediaQuery.of(context).size.height * 0.28,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Image.asset(
            'images/article_image.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 15,
        left: 15,
        child: Container(
          width: MediaQuery.of(context).size.height * 0.15,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              'подборка',
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height * 0.025,
                fontFamily: 'Onest',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height * 0.01,
        left: 20,
        right: 20,
        child: Text(
          'Подборка напитков, чтобы согреться зимой',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.height * 0.025,
            fontFamily: 'Onest',
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]);
  }

  Column listItem(BuildContext context, String assetName, String text) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              assetName,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            text,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontFamily: 'Onest',
            ),
          ),
        )
      ],
    );
  }
}
