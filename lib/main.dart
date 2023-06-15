import 'package:an_app/pages/home_page.dart';
// import 'package:example/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hidden_drawer/flutter_hidden_drawer.dart';
// import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DrawerMenuState(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Hidden Drawer',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(title: 'Flutter Hidden Drawer'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawer(
      drawerWidth: MediaQuery.of(context).size.width * .4,
      child: Scaffold(
        appBar: AppBar(
          leading: HiddenDrawerIcon(
            mainIcon: Icon(Icons.art_track_outlined),
          ),
          title: Text(widget.title!),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                'First Screen',
              ),
              ElevatedButton(
                child: Text("Go to next screen"),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecondPAge()));
                },
              )
            ],
          ),
        ),
      ),
      drawer: HiddenDrawerMenu(
        menu: <DrawerMenu>[
          DrawerMenu(
              child: const Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Menu 1"),
              ),
              onPressed: () {
                print("Menu 1");
              }),
          DrawerMenu(
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Menu 2"),
              ),
              onPressed: () {
                print("Menu 2");
              }),
        ],
        header: const Text("Header"),
        footer: const Text("Footer"),
      ),
    );
  }
}
