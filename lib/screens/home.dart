import 'package:flutter/material.dart';

import '../widgets/arrival_item.dart';
import '../widgets/hero_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Today'),
          elevation: 0,
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              const SizedBox(
                  height: 250,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        HeroItem(
                          image: 'assets/images/img_001.jpg',
                          title: 'Salad Week',
                          subtitle: 'Your week with fresh fruits',
                        ),
                        HeroItem(
                          image: 'assets/images/hero1.jpg',
                          title: 'Salad Week2',
                          subtitle: 'Your week with fresh fruits',
                        ),
                        HeroItem(
                          image: 'assets/images/hero2.jpg',
                          title: 'Salad Week3',
                          subtitle: 'Your week with fresh fruits',
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'New Arrival',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'See more',
                                style: TextStyle(color: Colors.grey[400]),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 260,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ArrivalItem(
                                    image: 'assets/images/hero1.jpg',
                                  ),
                                  ArrivalItem(
                                    image: 'assets/images/hero2.jpg',
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Special Deals',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                              Text(
                                'See more',
                                style: TextStyle(color: Colors.grey[400]),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const SizedBox(
                            height: 260,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ArrivalItem(
                                    image: 'assets/images/hero2.jpg',
                                  ),
                                  ArrivalItem(
                                    image: 'assets/images/hero1.jpg',
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          currentIndex: 0,
          selectedItemColor: Colors.pink[400],
          unselectedItemColor: Colors.grey[400],
          showUnselectedLabels: false,
          onTap: (int index) => (),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: ''),
          ],
        ));
  }
}
