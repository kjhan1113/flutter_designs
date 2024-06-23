import 'package:flutter/material.dart';
import 'package:flutter_designs/components/my_elevated_button.dart';
import 'package:flutter_designs/layout_page/grid_view_1.dart';
import 'package:flutter_designs/login_page/login_page_1.dart';
import 'package:flutter_designs/login_page/login_page_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/login1': (context) => const LoginPage1(),
        '/login2': (context) => const LoginPage2(),
        '/grid1': (context) => const GridView1(),
      },
      home: const MyHomePage(title: 'Flutter Designs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items1 = List.generate(10, (index) => "Item $index");
  final List<String> items2 = List.generate(10, (index) => "Item $index");
  final List<String> items3 = List.generate(10, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'TEST',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
              padding: const EdgeInsets.all(10.0), // Grid padding
              childAspectRatio: 1.0,
              children: const [
                MyElevatedButton(text: 'login1', routeName: '/login1'),
                MyElevatedButton(text: 'login2', routeName: '/login2'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'TEST',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
              padding: const EdgeInsets.all(10.0), // Grid padding
              childAspectRatio: 1.0,
              children: const [
                MyElevatedButton(text: 'login1', routeName: '/login1'),
                MyElevatedButton(text: 'login2', routeName: '/login2'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'TEST',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
              padding: const EdgeInsets.all(10.0), // Grid padding
              childAspectRatio: 1.0,
              children: const [
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login2', routeName: '/login2'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
                MyElevatedButton(text: 'login', routeName: '/login1'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
