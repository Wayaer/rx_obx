import 'package:flutter/material.dart';
import 'package:rx_obx/rx_obx.dart';

void main() {
  runApp(MaterialApp(title: 'RxObx', theme: ThemeData.light(), darkTheme: ThemeData.dark(), home: const _HomePage()));
}

final List<int> _counters = [0].obs;

class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('RxObx')),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          const Text('You have pushed the button this many times:'),
          Obx(() => Text('${_counters.length}', style: Theme.of(context).textTheme.headlineMedium)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                child: Obx(() => GridView.builder(
                      padding: const EdgeInsets.all(12),
                      itemCount: _counters.length,
                      itemBuilder: (_, int index) => Text('$index', style: Theme.of(context).textTheme.headlineMedium),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 40),
                    )),
              ),
            ),
          ),
        ])),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              _counters.add(1);
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add)));
  }
}
