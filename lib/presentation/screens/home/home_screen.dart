import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiverApp'),
      ),
      body: const _HomeScreenView(),
    );
  }
}

class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTitle(
          title:'State Provider',
          subtitle:'Un estado simple',
          location:'/state-provider'
        ),
        _CustomListTitle(
          title:'Future Provider',
          subtitle:'Un simple future + family',
          location:'/future-provider'
        ),
        _CustomListTitle(
          title:'Stream Provider',
          subtitle:'Un simple Stream',
          location:'/stream-provider'
        ),
        _CustomListTitle(
          title:'State Notifier Provider',
          subtitle:'Un provider con estado personalizado ',
          location:'/state-notifier-provider'
        ),
           
      ],
    );
  }
}

class _CustomListTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final String location;
  const _CustomListTitle({
     required this.title, 
     required this.subtitle,
     required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: () => context.push(location),
    );
  }
}
