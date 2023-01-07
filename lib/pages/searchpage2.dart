import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:text_to_speech/text_to_speech.dart';

class SearchedPage extends StatelessWidget {
  SearchedPage({Key? key, required this.mediinfo})
      : super(key: key); //const였는데 tts때문에 뺌
  final Map mediinfo;
  TextToSpeech tts = TextToSpeech();
//그나마 버튼 안보이게 하고 하는 방식이 gesturedetector로 화면 빈공간 클릭시 재생인데 이러면 voice assistant와 충돌이 안일어나나?
  //애초에 voice assistant느낌이라 필요가 없을거 같고 그냥 해당 페이지로 들어가게 되면 해야하는데..뭔가 동작이 감지되는 상황이 있으면 좋은데
  //

  // asdf() async {
  //   double volume = 1.0;
  //   tts.setVolume(volume);
  //   double pitch = 1.0;
  //   tts.setPitch(pitch);
  //   String language = 'ko_KR';
  //   tts.setLanguage(language);
  // }
  //
  // void speak() {
  //   tts.speak('문제야문제이세상속에');
  // }
  // FlutterTts flutterTts = FlutterTts();

  // void set() async {
  //   List<dynamic> languages = await flutterTts.getLanguages;
  //   flutterTts.setLanguage("ko-KR");
  //   flutterTts.setSpeechRate(1.0);
  //   flutterTts.setVolume(10.0);
  // }
  //
  // void speak() {
  //   flutterTts.speak(mediinfo["약명"]);
  //   flutterTts.speak(mediinfo["제조사"]);
  //   flutterTts.speak(mediinfo["성분"]);
  //   flutterTts.speak(mediinfo["효능"]);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mediinfo["약명"]),
      ),
      body: SafeArea(
        //padding 대신에 safearea로 하고
        //padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20,
          ),
          Text("품목명: ${mediinfo["약명"]}",
              style: TextStyle(fontSize: 20, fontFamily: 'SCDream4')),
          SizedBox(
            height: 20,
          ),
          Text("업체명: ${mediinfo["제조사"]}", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Text("성분: ${mediinfo["성분"]}", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Text("효능, 효과: ${mediinfo["효능"]}", style: TextStyle(fontSize: 20)),
          SizedBox(
            height: 20,
          ),
          Text("용법, 용량: ${mediinfo["복용"]}", style: TextStyle(fontSize: 20)),
        ]),
      ),
    );
  }
}
