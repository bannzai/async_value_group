## Features
async_value_group is a a Dart library for grouping some [riverpod](https://github.com/rrousselGit/riverpod) `AsyncValue`s into single `AsyncValue`.
- Grouping some `AsyncValue`s into single `AsyncValue` and retrieve all `AsyncValue.data` as a tuple.
- Waiting to be done multiple asynchronous process.
- If you use hooks_riverpod, call `AsyncValue.when` only once in `Widget.build` method even if multiple AsyncValues are required.

## Usage
```dart
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:async_value_group/async_value_group.dart';

class TweetsPage extends HookConsumerWidget {
  const TweetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueGroup.group2(
      ref.watch(tweetsProvider),
      ref.watch(userProvider),
    ).when(
      data: (t) => t.t1.isEmpty ? const TweetsEmpty() : TweetsBody(tweets: t.t1, user: t.t2),
      error: (error, st) => ErrorPage(error: error),
      loading: () => const Loading(),
    );
  }
}
```