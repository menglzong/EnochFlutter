import 'package:flutter/material.dart';
import 'package:flutter_ios/src/center/index.dart';
import 'package:flutter_ios/src/home/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _curIndex = 0;

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
    const BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _curIndex == 0 ? const HomePage() : const CenterPage(),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        onTap: (value) => {
          setState(
            () {
              _curIndex = value;
            },
          )
        },
        currentIndex: _curIndex,
      ),
    );
  }
}
