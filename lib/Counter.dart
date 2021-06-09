import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(60, 158, 158, 158),
        elevation: 0,
        title: Text(
          'Counter',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  '$count',
                  style: TextStyle(color: Colors.black, fontSize: 50),
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          FloatingActionButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Icon(
                Icons.refresh_outlined,
                color: Colors.white,
                size: 30,
              )),
        ],
      ),
    );
  }
}
