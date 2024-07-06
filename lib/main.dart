import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

String degree = '';
bool checkbox1 = false;
bool checkbox2 = false;
bool checkbox3 = false;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Feedback Form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://wpforms.com/wp-content/uploads/2017/01/how-to-add-a-customer-feedback-form-to-your-site.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Feedback Form',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter your name',
                          prefixIcon: Icon(Icons.person),
                          labelText: 'Your Name',
                          labelStyle: TextStyle(fontSize: 15),
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Enter your WhatsApp No',
                          prefixIcon: Icon(Icons.call),
                          labelText: 'WhatsApp No',
                          labelStyle: TextStyle(fontSize: 15),
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your Degree',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Row(
              children: [
                Radio(
                    value: 'UG',
                    groupValue: degree,
                    onChanged: (value) {
                      setState(() {
                        degree = value.toString();
                        print(value);
                      });
                    }),
                Text('UG Student'),
                Radio(
                    value: 'PG',
                    groupValue: degree,
                    onChanged: (value) {
                      setState(() {
                        degree = value.toString();
                        print(value);
                      });
                    }),
                Text('PG Student'),
                Radio(
                    value: 'Developer',
                    groupValue: degree,
                    onChanged: (value) {
                      setState(() {
                        degree = value.toString();
                        print(value);
                      });
                    }),
                Text('Developer'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Favorite Language',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: checkbox1,
                    onChanged: (value) {
                      setState(() {
                        checkbox1 = value ?? false;
                      });
                    }),
                Text('Java'),
                Checkbox(
                    value: checkbox2,
                    onChanged: (value) {
                      setState(() {
                        checkbox2 = value ?? false;
                      });
                    }),
                Text('Flutter'),
                Checkbox(
                    value: checkbox3,
                    onChanged: (value) {
                      setState(() {
                        checkbox3 = value ?? false;
                      });
                    }),
                Text('React'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Feedback',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: 'Enter your Feedback',
                    labelText: 'Your Feedback',
                    labelStyle: TextStyle(fontSize: 15),
                    fillColor: Colors.grey[300],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
