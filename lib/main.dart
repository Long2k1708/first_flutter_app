import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp()); //One-line function

// StatefulWidget: Các widget cho phép thay đổi trong quá trình làm việc 
// khi thuộc tính thay đổi (giống kiểu rerender bên react native)
class RandomEnglishWord extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomEnglishWordState(); 
    // Return về 1 state object có kiểu là lớp StatefulWidget này
    // Mỗi lần có gì thay đổi thì đoạn return này sẽ đc gọi lại
  }
}
// State object
// Luôn có đôi có cặp vs StatefulWidget
class RandomEnglishWordState extends State<RandomEnglishWord> {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random().asPascalCase;
    return new Text(
      'Hello World! :)\n' + wordPair,
      style: new TextStyle(
        fontSize: 20, 
        color: Colors.blue, 
        fontStyle: FontStyle.italic, 
        fontWeight: FontWeight.bold)
        );
  }
}

//StatelessWidget: Các widget immutable, không thay đổi đc thuộc tính trong suốt quá trình 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My 1st Flutter App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('My Flutter App'),
        ),
        body: new Center(
          child: new RandomEnglishWord(),
        ),
      ),
    );
  }
}