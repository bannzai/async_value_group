## Features
async_value_group is a a Dart library for grouping multiple [riverpod](https://github.com/rrousselGit/riverpod) `AsyncValue` proceess.
- Grouping multiple AsyncValue and retrieve multiple data as a tuple.
- Waiting to be done multiple asynchronous process.
- Call `AsyncValue.when` only once in `Widget.build` method even if multiple AsyncValues are required.

## Usage
```dart
class TweetsPage extends HookConsumerWidget {
  const TweetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AsyncValueGroup.group2(
      ref.watch(tweetsProvider),
      ref.watch(userProvider),
    ).when(
      data: (t) => t.a1.isEmpty
          ? const TweetsEmpty()
          : TweetsBody(tweets: t.a1, user: t.a2),
      error: (error, st) =>
          ErrorPage(error: error, reload: () => ref.refresh(tweetsProvider)),
      loading: () => const Loading(),
    );
  }
}
```