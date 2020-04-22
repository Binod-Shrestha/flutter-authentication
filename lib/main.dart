import 'package:flutter/material.dart';
import 'authenticator.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isAuthenciated;

  void _onAuthenticated(bool value) {
    setState(() => _isAuthenciated = value);
  }

  @override
  void initState() {
    _isAuthenciated = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authentication Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Authenticator(
              onAuthenticated: _onAuthenticated,
            ),
            Text(
              'Authentication: $_isAuthenciated',
            ),
          ],
        ),
      ),
    );
  }
}
