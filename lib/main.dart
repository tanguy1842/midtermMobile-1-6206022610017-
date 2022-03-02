import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _pc = TextEditingController();
  TextEditingController _laptop = TextEditingController();
  TextEditingController _tablet = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I HAVE CPU'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Image.network(
                  "https://www.zoomcamera.net/wp-content/uploads/2021/12/walihavecpu.jpg",
                  height: 180,
                ),
              ]),
            ),
            Text("PC"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/61kOasVVRnL._AC_SX466_.jpg",
                  height: 180,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _pc,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ใส่ราคา',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Text("Laptop"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Image.network(
                  "https://hnsfpau.imgix.net/5/images/detailed/186/83915.01.jpg?fit=fill&bg=0FFF&w=1500&h=844&auto=format,compress",
                  height: 180,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _laptop,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ใส่ราคา'),
                autofocus: true,
              ),
            ),
            Text("Tablet"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                Image.network(
                  "https://m.media-amazon.com/images/I/61ndwk9f8DL._AC_SL1500_.jpg",
                  height: 180,
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _tablet,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'ใส่ราคา'),
                autofocus: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      pc: _pc.text,
                      laptop: _laptop.text,
                      tablet: _tablet.text,
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              child: Text('ยืนยัน'),
            )
          ],
        ),
      ),
    );
  }
}
