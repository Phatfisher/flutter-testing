import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WizardPreferencePage extends StatefulWidget {
  const WizardPreferencePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<WizardPreferencePage> createState() => _WizardPreferencePage();
}

class _WizardPreferencePage extends State<WizardPreferencePage> {
  bool light = true;
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                child: Stack(children: <Widget>[
                  const Image(
                    image: AssetImage('assets/images/header_thin_d.jpg'),
                    height: 150,
                    fit: BoxFit.fitHeight,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120),
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage('assets/images/koa_logo.png'),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ])),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                textAlign: TextAlign.center,
                'Preferences',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: const Text(
                textAlign: TextAlign.start,
                'Please customize your KOA App experience using the settings below. You may change these settings at any time by selecting "Preferences" from the main menu.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(children: <Widget>[
                IconButton(
                    // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                    color: Colors.red,
                    iconSize: 32,
                    icon: const FaIcon(FontAwesomeIcons.bell),
                    onPressed: () {}),
                const Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Push Notifications',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Receive informative and promotional notifications from the KOA home office (about once a month).',
                          textAlign: TextAlign.start,
                        ),
                      ]),
                ),
                Switch(
                  // This bool value toggles the switch.
                  value: light,
                  activeColor: Colors.red,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      light = value;
                    });
                  },
                )
              ]),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  elevation: 12.0,
                  backgroundColor: Colors.red,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
