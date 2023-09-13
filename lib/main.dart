import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  //Pantalla de pagina inicial
  //const HomePage({super.key});

  void playNotas(int num){
    AudioPlayer notas = AudioPlayer();
    notas.play(AssetSource("audios/note$num.wav"));
  }

  Widget buildKey(Color tipo, int num){
    return Expanded(
      child: Container(
        color: tipo,
        child: TextButton(
          onPressed: (){
            playNotas(num);
          },
          child: Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: (){
      //       AudioPlayer notas = AudioPlayer();
      //       notas.play(AssetSource("audios/note1.wav"));
      //     },
      //     child: Text("Click"),
      //   ),
      // ),
      appBar: AppBar(
        title: Text("XylophoneApp"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(Color(0xffF72586), 1),
          buildKey(Color(0xffB6179E), 2),
          buildKey(Color(0xff7309B9), 3),
          buildKey(Color(0xff560BAF), 4),
          buildKey(Color(0xff490CA8), 5),
          buildKey(Color(0xff3B0CA5), 6),
          buildKey(Color(0xff4137CA), 7),
          // Expanded( //introducir en la funcion
          //   child: Container(
          //     color: Color(0xff4137CA),
          //     child: TextButton(
          //       onPressed: (){
          //         playNotas(7);
          //       },
          //       child: Text("hola"),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
