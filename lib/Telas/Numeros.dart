import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Numeros extends StatefulWidget {

  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  AudioCache _audioCache = AudioCache(prefix:"audios/");

  _executar(String nomeAudio){


    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioCache.loadAll([
      "1.mp3",
      "2.mp3",
      "3.mp3",
      "4.mp3",
      "5.mp3",
      "6.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;
    double altura = MediaQuery.of(context).size.height;

    return GridView.count(
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      //espaçamentos entre os filhos da GridView
      //childAspectRatio: 1.2,
        crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executar("1");
          },
          child: Image.asset("assets/images/1.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("2");
          },
          child: Image.asset("assets/images/2.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("3");
          },
          child: Image.asset("assets/images/3.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("4");
          },
          child: Image.asset("assets/images/4.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("5");
          },
          child: Image.asset("assets/images/5.png"),
        ),
        GestureDetector(
          onTap: (){
            _executar("6");
          },
          child: Image.asset("assets/images/6.png"),
        )
      ],
    );
  }
}
