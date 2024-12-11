import 'package:flutter/material.dart';

class pantallados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "pagina 2",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "pagina 2",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Texto Estilizado",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        )),
      ),
    );
  }
}
