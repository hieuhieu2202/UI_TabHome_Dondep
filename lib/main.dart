import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const NavigationBarExamApp());
}

class NavigationBarExamApp extends StatelessWidget {
  const NavigationBarExamApp({super.key});

  // Widget này là gốc của ứng dụng của bạn.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NavigationBarExam(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavigationBarExam extends StatefulWidget {
  const NavigationBarExam({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavigationBarExampleState();
  }
}

class _BottomNavigationBarExampleState extends State<NavigationBarExam> {
  int _selectiIdex = 0;

  //static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> widgetOption = <Widget>[
    TrangChuScreen(),
    HoatDong(),
    TinNhan(),
    TaiKhoan(),
    // ('Trang chủ',
    //   style: optionStyle,
    // ),
    // Text('Hoạt động',
    //   style: optionStyle,
    // ),
    // Text('Tin nhắn',
    //   style: optionStyle,
    // ),
    // Text('Tài khoản',
    //   style: optionStyle,
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectiIdex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBody: true,
      // appBar: AppBar(
      //   title: const Text('Hôm nay ban thế nào'),
      // ),
      body: SafeArea(
        child: widgetOption[_selectiIdex],
      ),
      //  body: Center(
      //    child: widgetOption.elementAt(_selectiIdex),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Trang chủ',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Hoạt động',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications),
            label: 'Tin nhắn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Tài khoản',
          ),
        ],
        currentIndex: _selectiIdex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class TrangChuScreen extends StatefulWidget {
  TrangChuScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TrangChuScreenState();
  }
}

class _TrangChuScreenState extends State<TrangChuScreen> {
  int currentSlide = 0;
  List<String> imagePaths = [
    'assets/slider1.jpg',
    'assets/slider2.jpg',
    'assets/slider3.jpg',
  ];

  void _updateSlide(int index) {
    setState(() {
      currentSlide = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width,

              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'bTaske',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        // SizedBox(width: 50),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 140,
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(13.0), // Thêm padding cho Card
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Hãy khám phá và trải nghiệm các dịch vụ gia đình ngay hôm nay.',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 18,
                                  // fontWeight: FontWeight.w500,
                                  fontFamily: 'Montserrat',
                                  // fontStyle: FontStyle.italic
                                ),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      Colors.white70),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Đăng nhập / Tạo tài khoản',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Card(
                  //         margin: EdgeInsets.all(10.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           style: ButtonStyle(
                  //             backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  //           ),
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 'assets/icon_clean.jpg',
                  //                 width: 120,
                  //                 height: 120,
                  //               ),
                  //               const SizedBox(height: 10),
                  //               const Text(
                  //                 'Dọn dẹp ',
                  //                 style: TextStyle(
                  //                   color: Colors.black,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: Card(
                  //         margin: EdgeInsets.all(10.0),
                  //         child: ElevatedButton(
                  //           onPressed: () {},
                  //           style: ButtonStyle(
                  //             backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  //           ),
                  //           child: Column(
                  //             children: [
                  //               Image.asset(
                  //                 'assets/icon_clean_house.jpg',
                  //                 width: 120,
                  //                 height: 120,
                  //               ),
                  //               const SizedBox(height: 10),
                  //               const Text(
                  //                 'Dọn dẹp nhà',
                  //                 style: TextStyle(
                  //                   color: Colors.black,
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(height: 20.0),
                  // Row(
                  //   // mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         child: Center(
                  //           child: Card(
                  //             child: ElevatedButton(
                  //               onPressed: () {},
                  //               style: ButtonStyle(
                  //                 backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  //               ),
                  //               child: const Column(
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 mainAxisSize: MainAxisSize.max,
                  //                 children: [
                  //
                  //                   Icon(
                  //                     Icons.add_circle_outline,
                  //                     size: 50,
                  //                     color: Colors.green,
                  //                   ),
                  //                   const SizedBox(height: 10),
                  //                   Text(
                  //                     'Dịch vụ khác ',
                  //                     style: TextStyle(
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // )
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 460,
                    margin: EdgeInsets.all(5.0),
                    // color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(175, 200)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipOval(
                                        child: Image.asset(
                                      'assets/icon_clean.jpg',
                                      width: 100,
                                      height: 100,
                                    )),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Dọn dẹp',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat_light',
                                      ),
                                    )
                                  ],
                                )),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(175, 200)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipOval(
                                        child: Image.asset(
                                      'assets/icon_clean_house.jpg',
                                      width: 100,
                                      height: 100,
                                    )),
                                    SizedBox(height: 10),
                                    const Text(
                                      'Dọn dẹp nhà',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat_light',
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(175, 200)),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ClipOval(
                                      child: Image.asset(
                                        'assets/cleanning.jpg',
                                        width: 100,
                                        height: 100,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Đang dọn dẹp',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat_light',
                                      ),
                                    )
                                  ],
                                )),
                            const SizedBox(width: 15),
                            ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  fixedSize: MaterialStateProperty.all<Size>(
                                      Size(175, 200)),
                                ),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      size: 100,
                                      color: Colors.green,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Dịch vụ',

                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat_light',
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HoatDong extends StatelessWidget {
  const HoatDong({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nội dung trang hoạt động', style: TextStyle(fontSize: 24.0)),
    );
  }
}

class TinNhan extends StatelessWidget {
  const TinNhan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nội dung trang tin nhắn', style: TextStyle(fontSize: 24.0)),
    );
  }
}

class TaiKhoan extends StatelessWidget {
  const TaiKhoan({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nội dung trang tài khoản', style: TextStyle(fontSize: 24.0)),
    );
  }
}
