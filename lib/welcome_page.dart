import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String pc, laptop, tablet;

  double plt = 0, total = 0;
  WelcomePage({
    Key? key,
    required this.pc,
    required this.laptop,
    required this.tablet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวนราคา"), backgroundColor: Colors.red),
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('ราคา PC : '),
                      subtitle: Text(' $pc'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('ราคา laptop : '),
                      subtitle: Text(' $laptop'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('Your tablet : '),
                      subtitle: Text(' $tablet'),
                    )),
                Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text('รวมราคา : '),
                      subtitle: Text(' ' +
                          numberAdd(
                            double.parse(pc),
                            double.parse(laptop),
                            double.parse(tablet),
                          ).toString()),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double numberAdd(double p, double l, double t) {
    total = p + l + t;
    return total;
  }
}
