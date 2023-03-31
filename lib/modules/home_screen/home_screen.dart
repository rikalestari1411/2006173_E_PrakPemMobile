import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/user.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Size size;

  tapBottomItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: HeaderWidget(
                user: widget.user,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SearchFieldWidget(),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: SectionTitle(
                        label: "Hotest News",
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: HotestNewsCard(
                        size: size,
                        newsTitle: "Indonesian Street Food",
                        pictureUrl:
                            "https://www.linkpicture.com/q/Desain-tanpa-judul.jpg",
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: SectionTitle(
                        label: "Latest News",
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: LatestNewsIndexCardSection(
                        size: size,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: tapBottomItem,
        items: [
          bottomMenuItem(
            "Home",
            Icons.home_rounded,
          ),
          bottomMenuItem(
            "News",
            Icons.newspaper_rounded,
          ),
          bottomMenuItem(
            "Menu",
            Icons.menu_rounded,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomMenuItem(
    String label,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(
        iconData,
      ),
    );
  }
}
