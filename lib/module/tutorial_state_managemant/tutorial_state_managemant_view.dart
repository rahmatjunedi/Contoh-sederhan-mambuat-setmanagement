// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// state management yaitu utk mengatur management

// cara meneruskan value ke halaman lain :
// melalui construktor

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_membuat_form_checkbox_dll/module/product_detail_view/product_detail_view.dart';

class TutorialStateManagemantView extends StatefulWidget {
  const TutorialStateManagemantView({Key? key}) : super(key: key);

  @override
  State<TutorialStateManagemantView> createState() =>
      _TutorialStateManagemantViewState();
}

class _TutorialStateManagemantViewState
    extends State<TutorialStateManagemantView> {
  List productList = []; //conter kita bisa sebut state dr counter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tutorial State Managemant"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Add"),
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                // utk menambahkan list

                productList.add({
                  "product_name": "Formula ${Random().nextInt(100)}",
                  "price": Random().nextInt(100)
                });
                setState(() {});
              },
            ),
          ),
        ],
      ),
      body: Container(
        // utk menampilkan mediaQuery ketik w100
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: productList.length,
          itemBuilder: (context, index) {
            var item = productList[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  // ketik navpus utk menampilkan templet Navigator. pus
                  context,
                  MaterialPageRoute( // cara implemati dengan navigator
                      builder: (context) => ProductDetailView(
                            item: item,
                          )),
                );
              },
              child: Card(
                // di bungkus dengan inwel
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: const NetworkImage(
                      "https://i.ibb.co/DYdNzxz/logoFB.jpg",
                    ),
                  ),
                  title: Text(item["product_name"]),
                  subtitle: Text(item["price"].toString()),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
