import 'package:flutter/material.dart';
import 'package:flutter_provider_example_01/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountHomeWidget extends StatelessWidget {
  const CountHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<CountProvider>(builder: (context, provider, child) {
        return Text(
          // Consumer 를 활용해 provider 에 접근하여 데이터를 받아올 수 있다.
          provider.count.toString(),

          //  Provider.of<CounterProvider>(context).count.toString(),
          // 직접 접근해서 받아오는 경우로 현 위젯 전체가 리로드 되는 현상

          style: const TextStyle(fontSize: 40.0),
        );
      }),
    );
  }
}
