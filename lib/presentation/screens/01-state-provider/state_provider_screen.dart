import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(randomNameProvider);
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
        appBar: AppBar(
          title: const Text('State Provider'),
        ),
        body: Center(
          child: Text(
            name,
            style: titleStyle,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.invalidate(randomNameProvider);
            // ref
            //     .read(randomNameProvider.notifier)
            //     .update((state) => state.toLowerCase());
            
          },
          child: const Icon(Icons.refresh_rounded),
        ));
  }
}
