import 'package:flutter/material.dart';

import 'views/WizardPreferencePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                alignment: Alignment.topCenter,
                child: Stack(children: <Widget>[
                  const Image(
                    image: AssetImage('assets/images/header_thin_a.jpg'),
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
                'Terms of Service',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                textAlign: TextAlign.center,
                'By using the KOA App you agree to the Terms of Service.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
                height: 250,
                margin: const EdgeInsets.all(10),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const SingleChildScrollView(
                      child: Text(
                          overflow: TextOverflow.fade,
                          "Cras eleifend mauris in erat iaculis, non fringilla lorem faucibus. Fusce commodo nibh malesuada, ultrices lacus blandit, posuere tellus. Integer tempus in lacus quis elementum. Pellentesque eros sem, porttitor imperdiet ornare ut, mollis non tortor. Phasellus mauris felis, volutpat sed nibh nec, pretium aliquet nulla. In hac habitasse platea dictumst. Donec faucibus nibh ac mi porttitor, vitae rutrum velit pretium. Maecenas molestie ultrices sollicitudin. Proin ligula leo, gravida a ante nec, tincidunt consectetur tellus. Nunc luctus felis turpis, non porttitor diam dapibus ac. Cras porttitor mollis massa sit amet pharetra. Maecenas condimentum vestibulum ante sit amet pharetra. Duis blandit mauris a quam laoreet, a finibus urna dignissim. Nulla facilisi. Sed maximus eros nibh, sit amet pretium magna sodales eget. Proin nec elit rhoncus turpis bibendum iaculis. Praesent luctus purus lectus, vitae interdum magna blandit a. Nullam at risus risus. Donec vel bibendum felis. Donec id neque eget erat elementum imperdiet nec a enim. Integer tincidunt nisi ornare erat pulvinar bibendum. Suspendisse et nulla lobortis, sodales mi eu, accumsan ipsum. Donec consequat cursus pulvinar. Sed imperdiet imperdiet tortor. Cras aliquet vitae erat ac aliquet. Vestibulum pretium elit lorem, ac posuere dui pulvinar sed. Donec in aliquam nulla. Aenean quam dui, tristique vitae imperdiet nec, venenatis a odio. Phasellus placerat arcu at mauris rhoncus, in rutrum orci fermentum. Aliquam a turpis facilisis, eleifend risus vel, efficitur ante. Mauris interdum mi libero, et pulvinar mauris posuere et. Phasellus a metus finibus, cursus quam ut, congue nisi. Proin non malesuada eros. Duis aliquet est nec auctor hendrerit. Sed tristique tincidunt orci ut faucibus. Sed eget dictum ipsum. ")),
                )),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WizardPreferencePage(
                          title: 'Wizard Preferences')),
                );
              },
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
