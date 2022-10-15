import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Model3D extends StatefulWidget {
  Model3D({Key? key}) : super(key: key);

  @override
  State<Model3D> createState() => _Model3DState();
}

class _Model3DState extends State<Model3D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Mobile Vectary II',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromARGB(255, 255, 248, 240),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 370,
                  child: WebView(
                    // backgroundColor: Colors.transparent,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl:
                        'https://app.vectary.com/p/38807fDayyWuJIxSYFE1nI',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: const [
                      Text(
                        '3D Model',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: const [
                      Chip(label: Text('label')),
                      SizedBox(width: 5),
                      Chip(label: Text('3D View')),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          'This isss Important description about this 3D model I use WebView package. If you want to make cool stuff like this go for it and search and make such things.',
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.remove),
                      const SizedBox(width: 6),
                      Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                            child: Text('1'),
                          )),
                      const SizedBox(width: 6),
                      const Icon(Icons.add),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      'PURCHASE',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
