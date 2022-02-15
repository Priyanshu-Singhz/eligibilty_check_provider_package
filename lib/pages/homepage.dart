import 'package:flutter/material.dart';
import 'package:flutter_application_6/providers/homepageprovider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: ChangeNotifierProvider<Homepageprovider>(
        create: (context) => Homepageprovider(),
        child: Consumer<Homepageprovider>(
          builder: ((context, provider, child) {
            return Container(
              decoration: BoxDecoration(
                  color: (provider.isEligible == true)
                      ? Colors.red
                      : Colors.green),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    provider.eligibility.toString(),
                    style: TextStyle(
                      fontSize: 52,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.red)))),
                      onPressed: () {},
                      child: TextField(
                        decoration: InputDecoration(hintText: "Enter Your Age"),
                        onChanged: (val) {
                          provider.checkeligibility(int.parse(val));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    )));
  }
}
