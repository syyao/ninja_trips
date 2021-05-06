import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        duration: Duration(seconds: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('margin animated'),
              onPressed: () => setState(() => _margin = 50),
            ),
            ElevatedButton(
              child: Text('color animated'),
              onPressed: () => setState(() => _color = Colors.purple),
            ),
            ElevatedButton(
              child: Text('width  animated'),
              onPressed: () => setState(() => _width = 400),
            ),
            ElevatedButton(
              child: Text('opacity  animated'),
              onPressed: () => setState(() => _opacity = 0),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text('hide me', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
