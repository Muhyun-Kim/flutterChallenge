import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var toggle = useState(false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('riverpod study'),
      ),
      body: Center(
        child: Text(
          toggle.value ? 'Hello' : 'World',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toggle.value = !toggle.value;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
