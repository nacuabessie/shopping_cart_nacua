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
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                GestureDetector(
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.add),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF716f72),
                            width: 1,
                          )),
                    ),
                    onTap: () {
                      Provider.of<DataClass>(context, listen: false)
                          .incrementX();
                    }),
                Spacer(),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
                )
              ],
            )),
        const Spacer(),
      ]),
    );
  }
}
