import 'package:flutter/material.dart';
import 'package:flutter_designs/components/body_desktop.dart';
import 'package:flutter_designs/components/body_mobile.dart';
import 'package:flutter_designs/components/my_elevated_button.dart';
import 'package:flutter_designs/layout_page/grid_view_1.dart';
import 'package:flutter_designs/layout_page/hero_widget_1.dart';
import 'package:flutter_designs/layout_page/layout_builder.dart';
import 'package:flutter_designs/layout_page/responsive_1.dart';
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
        '/responsive': (context) => const ResponsiveDesign(),
        '/layoutbuilder': (context) => const ResponsiveLayoutBuilder(
              mobileBody: BodyMobile(),
              desktopBody: BodyDesktop(),
            ),
        '/hero': (context) => const HeroWidget1(),
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
                'Login Design',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                MyElevatedButton(text: 'Login 1', routeName: '/login1'),
                MyElevatedButton(text: 'Login 2', routeName: '/login2'),
              ],
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'Layout Design',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                MyElevatedButton(text: 'MediaQuery', routeName: '/responsive'),
                MyElevatedButton(text: 'LayoutBuilder', routeName: '/layoutbuilder'),
                MyElevatedButton(text: 'Hero Widget', routeName: '/hero'),
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
            ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: const [
                MyElevatedButton(text: 'Login 1', routeName: '/login1'),
                MyElevatedButton(text: 'Login 2', routeName: '/login2'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
