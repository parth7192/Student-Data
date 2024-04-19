import 'package:flutter/material.dart';
import 'package:student_data/header.dart';

class AddDataPage extends StatefulWidget {
  const AddDataPage({super.key});

  @override
  State<AddDataPage> createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF2D2F41),
        foregroundColor: Colors.white,
        title: const Center(
          child: Text(
            "ADD DATA PAGE",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        height: size.height * 0.5,
        width: size.width * 0.5,
        color: Colors.red,
      ),
    );
  }
}
