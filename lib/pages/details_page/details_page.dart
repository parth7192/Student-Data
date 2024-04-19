import 'package:flutter/material.dart';
import 'package:student_data/header.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF2D2F41),
        foregroundColor: Colors.white,
        title: const Text(
          "DetailsPage",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              height: size.height * 0.4,
              width: size.width * 0.8,
              color: const Color(0xFF2D2F41),
              child: const Align(
                alignment: Alignment.center,
                child: CircleAvatar(radius: 40),
              ),
            ),
          ),
        ],
      ),
      // body: Container(
      //   padding: const EdgeInsets.all(16),
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: NetworkImage(
      //           "https://i.pinimg.com/564x/4d/b6/41/4db641ea7f1138ed36f4ab305a07427c.jpg"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.of(context).pushNamed(AppRoute.adddataPage);
      //   },
      //   icon: const Icon(Icons.add),
      //   label: const Text(""),
      // ),
    );
  }
}
