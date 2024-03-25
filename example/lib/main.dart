import 'package:async_value_group/async_value_group.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const TweetsPage(),
      ),
    );
  }
}

class Tweet {}

class User {}

final tweetsProvider = FutureProvider<List<Tweet>>((ref) async {
  final tweets = [Tweet()];
  return tweets;
});
final userProvider = StreamProvider<User>((ref) => Stream.value(User()));

class TweetsPage extends HookConsumerWidget {
  const TweetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueGroup.group2(
      ref.watch(tweetsProvider),
      ref.watch(userProvider),
    ).when(
      data: (t) => t.$1.isEmpty
          ? const TweetsEmpty()
          : TweetsBody(tweets: t.$1, user: t.$2),
      error: (error, st) => ErrorPage(error: error),
      loading: () => const Loading(),
    );
  }
}

class TweetsEmpty extends StatelessWidget {
  const TweetsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('No tweets'));
  }
}

class TweetsBody extends StatelessWidget {
  final User user;
  final List<Tweet> tweets;

  const TweetsBody({super.key, required this.user, required this.tweets});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tweets length ${tweets.length}'));
  }
}

class ErrorPage extends StatelessWidget {
  final Object error;

  const ErrorPage({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
