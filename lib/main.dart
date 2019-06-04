import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
            primarySwatch: Colors.red,
        ),
        home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("文字読み取り"),
        ),
        body: SingleChildScorollView(
            child: Column(
                children: <Widget>[
                  _startCamera(),
                ],
            ),
        ),
    );
  }

  Widget _startCamera() {
    return Contianer(
        margin: EdgeInsets.only(top: 10.0),
        child: Row(
            children: <Widget>[
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: RaisedButton(
                          color: Colors.blue,
                          textColor: Colors.white,
                          splashColor: Colors.blueGrey,
                          onPressed: () {
                            _onPickImageSelected();
                          },
                          child: Text('start camera'),
                      ),
                  ),
              ),
            ],
        ),
    );
  }

  void _onPickImageSelected() async {
    var imageSource = Images
  }

  try {
    final file = await ImagePicker.pickImage(source: imageSource);

    if (file == null) {
      throw Exception('ファイルを取得できませんでしたか')
    }
  }
}
