import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SafeArea(
        child: Container(
          // alignment: Alignment.center,
          margin: EdgeInsets.only(top: 30),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        //Image(image: AssetImage('Image Link'));
                        image: NetworkImage(
                            'https://googleflutter.com/sample_image.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                Text(
                  "Pawan Bohora",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: "Gwendolyn-Bold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(width: 20),
                      Center(
                        child: Text(
                          "98*****76",
                          style: TextStyle(
                            // color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(20),
                  // padding: EdgeInsets.symmetric(horizontal: 10),
                  // decoration: BoxDecoration(
                  color: Colors.white,
                  // ),
                  // height: 60,
                  child: ListTile(
                    leading: Icon(Icons.mail),
                    title: Text(
                      "BohoraPawan@gmial.com",
                      style: TextStyle(
                        // fontFamily: "Gwendolyn-Bold",
                        // color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
