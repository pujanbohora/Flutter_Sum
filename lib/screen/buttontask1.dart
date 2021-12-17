import 'package:flutter/material.dart';

class ButtonTask extends StatefulWidget {
  const ButtonTask({Key? key}) : super(key: key);

  @override
  _ButtonTaskState createState() => _ButtonTaskState();
}

class _ButtonTaskState extends State<ButtonTask> {

  final firstcontroller = TextEditingController();
  final secondcontroller = TextEditingController();
  int number = 0;
  int number1 = 0;
  int number2 = 0; 
  String total = '';

  bool validation1 =false;
  bool validation2 = false;

  @override
  void dispose() {
    firstcontroller.dispose();
    secondcontroller.dispose();
    super.dispose();
  }

  void sum(){
    number = number1 + number2;
    total = number.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: firstcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'First Number',
                    hintText: 'Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(

                /*  validator: (value){
                    if(value == null || value.isEmpty){
                      return "field is empty";
                    }
                    return null;
                  }, */

                  controller: secondcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Second Number',
                    hintText: 'Number',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red, minimumSize: Size(90, 40)),
                    onPressed: () {
                      setState(() {
                        String store1 = firstcontroller.text;
                        String store2 = secondcontroller.text;

                        store1.isEmpty? validation1 = true : validation1 = false;
                        store2.isEmpty? validation2 = true : validation2 = false;
                        number1 = int.parse(store1);
                        number2 = int.parse(store2); 
                        sum();
                      });
                    },
                    child: Text('Sum')),
                SizedBox(
                  height: 50,
                ),
                Row(children:  [
                  Text('Result: '),
                  Text(total),
                ],) 
               
              ],
            ),
          ),
        ),
      ),
    );
  }
}
