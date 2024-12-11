import 'package:flutter/material.dart';
import './Styles/Texts.dart';

class pantallados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 2"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(218, 35, 23, 37), Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "pagina 2",
              style: AppTextStyles.titleStyle,
            ),
            Text(
              "Texto Estilizado",
              style: AppTextStyles.subtitleStyle,
            ),
          ],
        )),
      ),
    );
  }
}
