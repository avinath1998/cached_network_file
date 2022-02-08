import 'package:cached_network_file/cached_network_file.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: CachedNetworkFile(
        errorWidget: (BuildContext context, Exception e) {
          return const Text("failed loading");
        },
        fileCachedBuilder: (BuildContext context, file,
            dynamic Function(String) deleteFromCacheCallback) {
          return Text(file.toString());
        },
        placeholder: const CircularProgressIndicator(),
        fileNotCachedBuilder:
            (BuildContext context, dynamic Function() loadFileCallback) {
          return ElevatedButton(
              onPressed: loadFileCallback, child: Text("Load"));
        },
        url:
            'https://firebasestorage.googleapis.com/v0/b/bitplatform-develop.appspot.com/o/test%2Ftest.png?alt=media&token=967bb743-4233-4fe7-9e8e-707786cd63a9',
      )),
    );
  }
}
