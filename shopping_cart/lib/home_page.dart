import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(
          height: 60,
        ),
        const Padding(padding: EdgeInsets.only(left: 20, right: 20)),
        const Padding(padding: const EdgeInsets.only(left: 20, right: 20)),
        const SizedBox(
          height: 200,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(children: [
            Consumer<DataClass>(
              builder: (context, dataClass, child) {
                return Text(
                  '${dataClass.x}',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            Spacer(),
            Text(
              "Total",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            )
          ]),
        ),
        const SizedBox(
          height: 100,
        ),
        const Padding(padding: const EdgeInsets.only(left: 20, right: 20)),
        const Spacer(),
      ]),
    );
  }
}
