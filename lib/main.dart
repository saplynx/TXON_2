import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorApp(),
    );
  }
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var _text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: TextField(
              controller: _text,
              style: TextStyle(fontSize: 20.0),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.end,
              readOnly: true,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = '';
                    });
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_text.text != null && _text.text.length > 0) {
                        _text.text =
                            _text.text.substring(0, _text.text.length - 1);
                      }
                    });
                  },
                  child: Text(
                    'C',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '.';
                    });
                  },
                  child: Text(
                    '.',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '/';
                    });
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 18.0),
                  )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '7';
                    });
                  },
                  child: Text(
                    '7',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '8';
                    });
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '9';
                    });
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '*';
                    });
                  },
                  child: Text(
                    '*',
                    style: TextStyle(fontSize: 18.0),
                  )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '4';
                    });
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '5';
                    });
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '6';
                    });
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '-';
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 18.0),
                  )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '1';
                    });
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '2';
                    });
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '3';
                    });
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '+';
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 18.0),
                  )),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                  onPressed: () {
                    _text.text = _text.text + '(';
                  },
                  child: Text(
                    '(',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + '0';
                    });
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 18.0),
                  )),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text + ')';
                    });
                  },
                  child: Text(
                    ')',
                    style: TextStyle(fontSize: 18.0),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _text.text = _text.text.interpret().toString();
                    });
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 18.0),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
