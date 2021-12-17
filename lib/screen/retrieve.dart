import 'package:flutter/material.dart';

class RetrieveText extends StatefulWidget {
  const RetrieveText({Key? key}) : super(key: key);

  @override
  _RetrieveTextState createState() => _RetrieveTextState();
}

class _RetrieveTextState extends State<RetrieveText> {
  String name = '';
  //step 1
  final mycontroller = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(title: Text('Title 1')),
          ListTile(
            title: Text('Item 2'),
          ),
        ],
      )),
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              //step 2
              controller: mycontroller,
               //to identity the textfield
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
                errorText: _validate ? "Field can't be empty" : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    name = mycontroller
                        .text; //text which was passed to mycontroller and text is beign pulled
                    name.isEmpty ? _validate = true : _validate = false;
                  });
                },
                child: Icon(Icons.arrow_forward),
              ),
            ),
            SizedBox(height: 20),
            Text('$name'),
          ],
        ),
      )),
    );
  }
}
