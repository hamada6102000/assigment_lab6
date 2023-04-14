import 'package:flutter/material.dart';

class basket extends StatefulWidget {
  const basket({super.key});

  @override
  State<basket> createState() => _basketState();
}

class _basketState extends State<basket> {
  int counter_A = 0;
  int counter_B = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basketball Score Counter"),
        backgroundColor: Color.fromARGB(255, 17, 110, 192),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 13, right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "TEAM A",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "$counter_A",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_A++;
                        });
                      },
                      child: Text(
                        "+1 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_A = counter_A + 2;
                        });
                      },
                      child: Text(
                        "+2 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_A = counter_A + 3;
                        });
                      },
                      child: Text(
                        "+3 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 310,
                child: VerticalDivider(
                  indent: 0,
                  endIndent: 10,
                  thickness: .8,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 13, right: 6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "TEAM B",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                      "$counter_B",
                      style:
                          TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_B = counter_B + 1;
                        });
                      },
                      child: Text(
                        "+1 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_B = counter_B + 2;
                        });
                      },
                      child: Text(
                        "+2 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                    MaterialButton(
                      padding: EdgeInsets.only(
                          top: 11, bottom: 11, left: 40, right: 40),
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          counter_B = counter_B + 3;
                        });
                      },
                      child: Text(
                        "+3 POINT",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          MaterialButton(
            padding: EdgeInsets.only(top: 11, bottom: 11, left: 40, right: 40),
            color: Colors.white38,
            onPressed: () {
              setState(() {
                counter_A = 0;
                counter_B = 0;
              });
            },
            child: Text(
              "RESET",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
