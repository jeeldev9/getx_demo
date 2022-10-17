import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/counter_app/controller/counter_controller.dart';

class CounterHomePage extends StatelessWidget {
  const CounterHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterController c= Get.put(CounterController());
    return Scaffold(
      appBar: AppBar(title:  const Text( "Counter Demo") ,) ,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Obx(()=>Text("Count is:- ${c.count}")),

            ElevatedButton(onPressed: (){
              c.increment();
            }, child: const Text("Increment")),
          ],
        ),
      ),
    );
  }
}
