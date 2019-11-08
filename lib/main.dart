// A. マテリアルコンポーネントをimportしてこのファイル内で利用可能にする
// https://flutter.dev/docs/development/ui/widgets/material
import 'package:flutter/material.dart';

// B. main関数
void main() {
  // C. runApp関数
  runApp(MyApp());
}

// D. StatelessWidgetを継承したクラス
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // N-1. Theme
      theme: ThemeData(
        primaryColor: Colors.red,
        textTheme: TextTheme(
          display1: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// E. StatefulWidgetを継承したクラス
class MyHomePage extends StatefulWidget {
  // コンストラクター
  MyHomePage({Key key, String title})
      : this.title = title,
        super(key: key);

  // 受け取った文字列の入れ物
  final String title;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

// F. Stateを継承したクラス
class _MyHomePageState extends State<MyHomePage> {
  // G. 状態の保持と更新
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // H. _MyHomePageStateのbuildメソッド
  @override
  Widget build(BuildContext context) {
    // K. ページはScaffoldで組む
    return Scaffold(
      // L. AppBar
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // M. bodyでページの中身をレイアウト
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            // I. _counterの表示
            Text(
              '$_counter',
              // N-2. Theme
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      // J. ボタン操作に応じて_counterを増やす
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
