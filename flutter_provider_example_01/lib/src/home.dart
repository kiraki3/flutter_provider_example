import 'package:flutter/material.dart';
import 'package:flutter_provider_example_01/src/provider/count_provider.dart';
import 'package:flutter_provider_example_01/src/ui/count_home_widget.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  late CountProvider _countProvider;

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Provider 를 호출해 접근, listen: false 를 통해 구독된 모든 위젯들에게 알림을 보내지 않게 한다.
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Sample"),
      ),
      body: const CountHomeWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            onPressed: () {
              _countProvider.add();
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              _countProvider.remove();
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
