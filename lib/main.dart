import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: SizedBox(
            width: 300,
            height: 300,
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              
              children: [
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '7',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '9',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '+',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '4',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '6',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '-',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '2',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '3',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'x',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '0',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '.',
                        style: TextStyle(
                          fontSize:
                              24.0, // Sets the font size to 24 logical pixels
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    // Action to perform on button press
                  },
                  color: Colors.white,
                  textColor: Colors.red,
                  // 🎯 Wrap the Text in Center instead of a Row
                  child: const Center(
                    child: Text(
                      '÷',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.backspace),
                  iconSize: 30.0, // Optional: Adjust size
                  color: Colors.white, // Optional: Adjust color
                  onPressed: () {
                    // Your action here
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
