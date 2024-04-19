import 'package:flutter/material.dart';
import 'package:student_data/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> studentData = ["", ""];
List<TextEditingController> con = [
  TextEditingController(),
  TextEditingController(),
];

class _HomePageState extends State<HomePage> {
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
            "HomePage",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://i.pinimg.com/564x/4d/b6/41/4db641ea7f1138ed36f4ab305a07427c.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < studentData.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: con[i],
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Name",
                          labelText: "Enter Your Name",
                          hintStyle: const TextStyle(
                            color: Colors.black54,
                          ),
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(
                          () {
                            studentData.removeAt(i);
                            con.removeAt(i);
                          },
                        );
                      },
                      icon: const Icon(
                        Icons.highlight_remove_outlined,
                        shadows: [
                          Shadow(
                            offset: Offset(5, 5),
                            color: Color(0xffFFFBDA),
                            blurRadius: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            IconButton(
              onPressed: () {
                setState(() {
                  studentData.add("");
                  con.add(TextEditingController());
                });
              },
              icon: const Icon(
                Icons.add_circle_outline_outlined,
                size: 33,
                shadows: [
                  Shadow(
                    offset: Offset(5, 5),
                    color: Color(0xffFFFBDA),
                    blurRadius: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoute.detailsPage);
        },
        icon: const Icon(Icons.add),
        label: const Text(""),
      ),
    );
  }
}
