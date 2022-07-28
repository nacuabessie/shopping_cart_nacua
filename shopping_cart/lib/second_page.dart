import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'data_class.dart';
import 'home_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      child: Icon(Icons.remove),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xFF716f72),
                            width: 1,
                          )),
                    ),
                    onTap: () {
                      if (context.read<DataClass>().x > 0) {
                        context.read<DataClass>().decrementX();
                      }else {
                        Get.snackbar("Item", "Can not more than this",
                            backgroundColor: Colors.black,
                            colorText: Colors.white,
                            titleText: Text(
                              "Item",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                            messageText: Text("Can not be less than this", 
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white
                            ))
                            );
                      }
                    }),

                Spacer(),

                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: [
                      Spacer(),
                      Icon(Icons.skip_previous_outlined, color:Color(0xFFfefeff)),  
                      GestureDetector(
                        onTap: (){
                          Get.to(()=>HomePage(), transition: Transition.downToUp, duration: Duration(seconds: 1));
                        }, 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Prev Page", style: TextStyle(
                                fontSize: 20,color:Color(0xFFfefeff)
                            ),),
                          ],
                        ),
                      ),                  
                    ],)
                ),)
            ],
            )),
      ]),
    );
  }
}
