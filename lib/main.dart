import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(AppLifeCycleApp());
}

class AppLifeCycleApp extends StatefulWidget {
  const AppLifeCycleApp({super.key});

  @override
  State<AppLifeCycleApp> createState() => _AppLifeCycleAppState();
}

class _AppLifeCycleAppState extends State<AppLifeCycleApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppLifeCycle"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.amber,
              child: Text(
                "HomePage",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
