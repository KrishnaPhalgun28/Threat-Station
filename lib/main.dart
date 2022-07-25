import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/inspect-api-provider.dart';
import 'pages/home-page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => InspectAPIProvider(),
          lazy: false,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Threat Station",
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
