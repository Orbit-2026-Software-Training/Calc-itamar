import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String currentNumbersPressed = '';
  final List<String> _history = [];
  int _historyIndex = 0;
  bool _showHistory = false;

  void _buttonPressed(String text) {
    setState(() {
      if (currentNumbersPressed == 'Error') {
        currentNumbersPressed = '';
      }


      currentNumbersPressed += text;
    });
  }
//math solver 
  String _calculateResult(String userInput) {
    if(userInput.contains('..')){
        currentNumbersPressed = 'Error';
      }
    if (userInput.trim().isEmpty) return '';

    try {
      userInput = userInput.replaceAll('x', '*').replaceAll('÷', '/');
      List<String> equationParts = [];
      String currentNumber = '';

      for (int i = 0; i < userInput.length; i++) {
        String char = userInput[i];

        if (['+', '-', '*', '/'].contains(char)) {
          if (currentNumber.trim().isEmpty && equationParts.isEmpty) {
            currentNumber = '0'; 
          }
          equationParts.add(currentNumber);
          equationParts.add(char);
          currentNumber = ''; 
        } else {
          currentNumber += char;
        }
      }

      equationParts.add(currentNumber);
      equationParts.removeWhere((currentNumber) => currentNumber.trim().isEmpty);

      for (int i = 1; i < equationParts.length; i += 2) {
        if (equationParts[i] == '*' || equationParts[i] == '/') {
          double left = double.parse(equationParts[i - 1].trim());
          double right = double.parse(equationParts[i + 1].trim());

          if (equationParts[i] == '/' && right == 0) {
            return 'Error'; 
          }

          double result = equationParts[i] == '*' ? (left * right) : (left / right);
          equationParts.replaceRange(i - 1, i + 2, [result.toString()]);
          i -= 2;
        }
      }

      for (int i = 1; i < equationParts.length; i += 2) {
        if (equationParts[i] == '+' || equationParts[i] == '-') {
          double left = double.parse(equationParts[i - 1].trim());
          double right = double.parse(equationParts[i + 1].trim());

          double result = equationParts[i] == '+' ? (left + right) : (left - right);
          equationParts.replaceRange(i - 1, i + 2, [result.toString()]);
          i -= 2;
        }
      }

      String finalResult = equationParts[0].trim();
      
      if (finalResult.endsWith('.0')) {
        return finalResult.substring(0, finalResult.length - 2);
      }

      return finalResult;
    } catch (e) {
      return 'Error';
    }
  }

  @override
  //front end
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.white,
                width: 300.0,
                height: 120.0,
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  currentNumbersPressed,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
              //history box
              if (_showHistory)
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  color: Colors.white,
                  width: 300.0,
                  height: 48.0,
                  child: Row(
                    children: [
                      //histroy arrow up
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_up, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            if (_history.isNotEmpty && _historyIndex > 0) {
                              _historyIndex--; 
                            }
                          });
                        },
                        //history arrow down
                      ),
                      IconButton(
                        icon: const Icon(Icons.arrow_drop_down, color: Colors.black54),
                        onPressed: () {
                          setState(() {
                            if (_history.isNotEmpty && _historyIndex < _history.length - 1) {
                              _historyIndex++; 
                            }
                          });
                        },
                      ),
                      //if theres no history to show No History
                      Expanded(
                        child: Text(
                          _history.isEmpty ? 'No History' : _history[_historyIndex],
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      //history delete
                      IconButton(
                        icon: const Icon(Icons.delete_outline, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            _history.clear();
                            _historyIndex = 0;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                //numbers buttons
              Expanded(
                child: SizedBox(
                  width: 300,
                  height: 300,
                  child: GridView.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                    children: [
                      CalcButton(buttonText: '7', onPressed: () => _buttonPressed('7')),
                      CalcButton(buttonText: '8', onPressed: () => _buttonPressed('8')),
                      CalcButton(buttonText: '9', onPressed: () => _buttonPressed('9')),
                      CalcButton(buttonText: ' + ', onPressed: () => _buttonPressed(' + ')),
                      
                      CalcButton(buttonText: '4', onPressed: () => _buttonPressed('4')),
                      CalcButton(buttonText: '5', onPressed: () => _buttonPressed('5')),
                      CalcButton(buttonText: '6', onPressed: () => _buttonPressed('6')),
                      CalcButton(buttonText: ' - ', onPressed: () => _buttonPressed(' - ')),
                      
                      CalcButton(buttonText: '1', onPressed: () => _buttonPressed('1')),
                      CalcButton(buttonText: '2', onPressed: () => _buttonPressed('2')),
                      CalcButton(buttonText: '3', onPressed: () => _buttonPressed('3')),
                      CalcButton(buttonText: ' x ', onPressed: () => _buttonPressed(' x ')),
                      //clear
                      CalcButton(
                        buttonText: 'C',
                        onPressed: () {
                          setState(() {
                            currentNumbersPressed = '';
                          });
                        },
                      ),
                      CalcButton(buttonText: '0', onPressed: () => _buttonPressed('0')),
                      CalcButton(buttonText: '.', onPressed: () => _buttonPressed('.')),
                      CalcButton(buttonText: ' ÷ ', onPressed: () => _buttonPressed(' ÷ ')),
                      //history button
                      CalcButton(
                        buttonText: '⟲',
                        onPressed: () {
                          setState(() {
                            //turns on history box but making the boolen true
                            _showHistory = !_showHistory;
                          });
                        },
                      ),    
                      //delte button                 
                      CalcButton(
                        buttonText: '⌫',
                        onPressed: () {
                          setState(() {
                            if (currentNumbersPressed.isNotEmpty) {
                              currentNumbersPressed = currentNumbersPressed.substring(
                                0,
                                currentNumbersPressed.length - 1,
                              );
                            }
                          });
                        },
                      ),
                      //equals button printing the resualt
                      CalcButton(
                        buttonText: '=',
                        onPressed: () {
                          setState(() {
                            if (currentNumbersPressed.isNotEmpty) {
                              String result = _calculateResult(currentNumbersPressed);

                              if (result != 'Error' && result.isNotEmpty) {
                                _history.add('$currentNumbersPressed = $result');
                                _historyIndex = _history.length - 1; 
                              }
                              currentNumbersPressed = result;
                            }
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//reuseable button widget
class CalcButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CalcButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      textColor: Colors.red,
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}