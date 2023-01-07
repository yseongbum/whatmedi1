import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatmedi1/pages/searchpage.dart';
import 'package:whatmedi1/pages/settingpage.dart';
import 'package:whatmedi1/pages/takepicturescreen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final CameraDescription cameraa;
    cameraa = CameraDescription(
        name: '0',
        lensDirection: CameraLensDirection.back,
        sensorOrientation: 90);

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          SearchPage(),
          //TakePictureScreen(camera: cameraa),
          SettingPage(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 110.6,
        child: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.lightGreen[50],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          selectedLabelStyle: TextStyle(
            height: 1.6,
            fontSize: 25,
            color: Colors.black,
          ),
          unselectedLabelStyle: TextStyle(
            height: 1.6,
            fontSize: 25,
            color: Colors.black54,
          ), // your text style
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 32),
              label: "검색",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt, size: 32),
              label: "촬영",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 32),
              label: "설정",
            ),
          ],
        ),
      ),
    );
  }
}
