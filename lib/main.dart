import 'package:flutter/material.dart';
import 'package:navigation_demo/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Navigation Demo - Home Page'),
      onGenerateRoute: _getRoute,
    );
  }

  Route<Null> _getRoute(RouteSettings settings) {
    final String _path = settings.name;
    final Map _arg = settings.arguments;

    if (_path == '/page1') {
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Page1(tabNo: _arg['tabNo']));
    }

    if (_path == '/page2') {
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Page2(tabNo: _arg['tabNo']));
    }

    if (_path == '/page3') {
      return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) => Page3(tabNo: _arg['tabNo']));
    }

    return null;
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click a button below to navigate to a page.',
            ),
            RaisedButton(
              child: Text('Page 1'),
              onPressed: () => Navigator.of(context).pushNamed('/page1', arguments: {'tabNo':2}),
            ),
            RaisedButton(
              child: Text('Page 2'),
              onPressed: () => Navigator.of(context).pushNamed('/page2', arguments: {'tabNo':1}),
            ),
            RaisedButton(
              child: Text('Page 3'),
              onPressed: () => Navigator.of(context).pushNamed('/page3', arguments: {'tabNo':4}),
            ),
          ],
        ),
      ),
    );
  }
}
