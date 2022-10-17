import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/counter_app/counter_app_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Get.to(()=>const CounterHomePage());
            }, child: const Text("Counter App")),
          ],
        ),
      ),
    );
  }
}
