import 'package:flutter/material.dart';
import '../utilities/constants.dart';
import 'list_page.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late String foodItem;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'S.A.R.A',
          ),
        ),
        backgroundColor: const Color(0xFF839DAA),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: kTextFieldInputDecoration,
                    onChanged: (value) {
                      foodItem = value;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, foodItem);
                  },
                  child: const Text(
                    'Get Recipes',
                    style: kButtonTextStyle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ListPage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.list_alt_rounded,
                          size: 80.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: 200.0,
                    child: Image.asset('assets/logo.png'),
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
