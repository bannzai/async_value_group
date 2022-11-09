import 'package:async_value_group/async_value_extension.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:async_value_group/async_value_group.dart';

void main() {
  test('Simple AsyncValue case', () {
    // Check nullish and non nullish values
    const AsyncValue<int?> t1 = AsyncData(1);
    const AsyncValue<String?> t2 = AsyncData("value");
    const AsyncValue<double?> t3 = AsyncData(null);
    const AsyncValue<String> t4 = AsyncData("value");
    final group = AsyncValueGroup.group4(t1, t2, t3, t4);
    expect(group.value!.t1, 1);
    expect(group.value!.t2, "value");
    expect(group.value!.t3, null);
    expect(group.value!.t4, "value");
  });
}
