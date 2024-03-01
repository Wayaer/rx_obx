import 'package:flutter/material.dart';
import 'package:rx_obx/rx_obx.dart';

void main() {
  runApp(MaterialApp(
      title: 'RxObx',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const _HomePage()));
}

final _counter = 0.obs;

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RxObx')),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Text('You have pushed the button this many times:'),
              Obx(() => Text('$_counter',
                  style: Theme.of(context).textTheme.headlineMedium)),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const _NextPage()));
                  },
                  child: const Text('Next Page'))
            ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _counter.value++;
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}

class _NextPage extends StatelessWidget {
  const _NextPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                _counter.value++;
              },
              child: const Text('Increment'))
        ])));
  }
}
