import 'package:flutter_base_example/features/home/data/home_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final users = ref.watch(homeProvider).unwrapPrevious();

    return switch (users) {
      AsyncData(:final value) => Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: RefreshIndicator.adaptive(
          onRefresh: () async => ref.invalidate(homeProvider),
          child: ListView.builder(
            itemCount: value.people.length,
            itemBuilder: (context, index) {
              final user = value.people[index];
              return ListTile(
                title: Text('${user.firstName} ${user.lastName}'),
                subtitle: Text('Age: ${user.age}'),
              );
            },
          ),
        ),
      ),
      AsyncError(:final error) => Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: Center(child: Text('Error: $error')),
      ),
      _ => Scaffold(
        appBar: AppBar(title: const Text('Home Page')),
        body: const Center(child: CircularProgressIndicator()),
      ),
    };
  }
}
