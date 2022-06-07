import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<MaterialColor> colors = [
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.yellow,
    Colors.orange
  ];

  Color? _color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Palette"),
        backgroundColor: _color ?? Colors.black,
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                height: 70,
                margin: EdgeInsets.all(32),
                decoration: BoxDecoration(
                  color: colors[index],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(""),
              ),
              onTap: () {
                setState(() {
                  _color = colors[index];
                });
              },
            );
          }),
    );
  }

  void _changeColor(MaterialColor color) {}
}
