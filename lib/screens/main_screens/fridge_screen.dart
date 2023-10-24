import 'package:flutter/material.dart';
import 'package:webmobile2/logger.dart';

class FridgeScreen extends StatefulWidget {
  const FridgeScreen({super.key});

  @override
  State<FridgeScreen> createState() => _FridgeScreenState();
}

class _FridgeScreenState extends State<FridgeScreen> {
  final _searchController = TextEditingController();
  String? selectedValue;
  int _productCount = 0;
  List<int> productList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Мой холодильник',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.04,
              fontFamily: 'Onest',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            onChanged: (value) {
              setState(() {});
            },
            controller: _searchController,
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
        _searchController.text.isNotEmpty
            ? Column(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 236, 236, 236),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Огурец',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.022,
                                    fontFamily: 'Onest',
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _productCount++;
                                        logg.i(
                                            '_productCount = $_productCount, ');
                                      });
                                    },
                                    child: Image.asset(
                                      'images/plus.png',
                                      scale: 1.2,
                                    ))
                              ]),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Арбуз',
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.022,
                                    fontFamily: 'Onest',
                                  ),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _productCount++;
                                        logg.i(
                                            '_productCount = $_productCount, ');
                                      });
                                    },
                                    child: Image.asset(
                                      'images/plus.png',
                                      scale: 1.2,
                                    ))
                              ]),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Апельсин',
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.022,
                                      fontFamily: 'Onest',
                                    ),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _productCount++;
                                          logg.i(
                                              '_productCount = $_productCount, ');
                                        });
                                      },
                                      child: Image.asset(
                                        'images/plus.png',
                                        scale: 1.2,
                                      ))
                                ]),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
              ])
            : Container(),
        if (_productCount == 0 && _searchController.text.isEmpty)
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Это ваш холодильник, выберите продукты которые у вас есть чтобы рекомендации блюд были максимально удобными и точными для вас',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                    fontFamily: 'Onest',
                  ),
                ),
              ),
            ],
          ),
        if (_productCount != 0)
          Wrap(children: [
            for (int i = 0; i < _productCount; i++)
              Container(
                  width: MediaQuery.of(context).size.height * 0.2,
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 236, 236, 236),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Огурец',
                          style: TextStyle(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.022,
                            fontFamily: 'Onest',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                _productCount--;
                                logg.i('_productCount = $_productCount, ');
                              });
                            },
                            child: Image.asset('images/close.png'))
                      ]))
          ])
      ]),
    ));
  }
}
