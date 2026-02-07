import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/nav/tabs/QranTab/quran_tab.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget> screens = [
    QranTab(),
    QranTab(),
    QranTab(),
    QranTab(),
    QranTab(),
  ];
  List<String> backGroumdImages = [
    'assets/images/bg_image.png',
    'assets/images/background_hadeth.png',
    'assets/images/bg_image.png',
    'assets/images/bg_image.png',
    'assets/images/bg_image.png'
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backGroumdImages[currentIndex]),
                fit: BoxFit.fill)),
        child: Scaffold(
            body: Stack(alignment: Alignment.center, children: [
              Positioned(
                top: 20,
                child: Image(
                  image: AssetImage(
                    'assets/images/img_header.png',
                  ),
                ),
              ),
              screens[currentIndex]
            ]),
            backgroundColor: Colors.transparent,
            bottomNavigationBar: Container(
              height: 80,
              width: double.infinity,
              color: const Color(
                0xffE2BE7F,
              ),
              child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  selectedItemColor: Colors.white,
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  backgroundColor: const Color(
                    0xffE2BE7F,
                  ),
                  onTap: (value) {
                    print(value);
                    currentIndex = value;
                    setState(() {});
                  },
                  items: [
                    BottomNavigationBarItem(
                      activeIcon:
                          buildActiveNavIcon('assets/images/icons/ic_book.png'),
                      icon: Image.asset(
                        'assets/images/icons/ic_book.png',
                      ),
                      label: 'Qran',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: buildActiveNavIcon(
                          'assets/images/icons/ic_hadeth.png'),
                      icon: Image.asset(
                        'assets/images/icons/ic_hadeth.png',
                      ),
                      label: 'Qran',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: buildActiveNavIcon(
                          'assets/images/icons/ic_radio.png'),
                      icon: Image.asset(
                        'assets/images/icons/ic_radio.png',
                      ),
                      label: 'Qran',
                    ),
                    BottomNavigationBarItem(
                      activeIcon: buildActiveNavIcon(
                          'assets/images/icons/ic_sebha.png'),
                      icon: Image.asset(
                        'assets/images/icons/ic_sebha.png',
                      ),
                      label: 'Qran',
                    ),
                    BottomNavigationBarItem(
                      activeIcon:
                          buildActiveNavIcon('assets/images/icons/ic_time.png'),
                      icon: Image.asset(
                        'assets/images/icons/ic_time.png',
                      ),
                      label: 'Qran',
                    ),
                  ]),
            )));
  }

  Container buildActiveNavIcon(String icon) {
    return Container(
      width: 59,
      height: 34,
      decoration: BoxDecoration(
          color: Color(0xff202020).withOpacity(0.6),
          borderRadius: BorderRadius.circular(66.r)),
      child: Image.asset(
        icon,
        color: Colors.white,
      ),
    );
  }
}
