import 'package:flutter/material.dart';

void main() {
  runApp(const ShowStockApp(title: "Show Stock App"));
}

class ShowStockApp extends StatelessWidget {
  final String title;

  const ShowStockApp({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1, //10%
                  child: Container(),
                ),
                Expanded(
                  flex: 6, //80%
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: const Text("Update"),
                      ),
                      const DropdownMenu(
                        dropdownMenuEntries: [],
                      ),
                      const Text("Selected City"),
                      ElevatedButton(
                        onPressed: () => {},
                        child: const Text("View Event"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1, //10%
                  child: Container(),
                ),
              ],
            ),
          )),
    );
  }
}
