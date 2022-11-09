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
    expect(group is AsyncData, true);
  });

  group("group2", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      final group = AsyncValueGroup.group2(t1, t2);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      final group = AsyncValueGroup.group2(t1, t2);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
      final group = AsyncValueGroup.group2(t1, t2);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });
  
  group("group3", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      final group = AsyncValueGroup.group3(t1, t2, t3);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      final group = AsyncValueGroup.group3(t1, t2, t3);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      final group = AsyncValueGroup.group3(t1, t2, t3);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
    
    group("group4", () {
      test("#AsyncValue", () {
        const AsyncValue<int> t1 = AsyncData(1);
        const AsyncValue<String> t2 = AsyncData("value");
        const AsyncValue<double> t3 = AsyncData(1.0);
        const AsyncValue<String> t4 = AsyncData("value");
        final group = AsyncValueGroup.group4(t1, t2, t3, t4);
        expect(group.value!.t1, 1);
        expect(group.value!.t2, "value");
        expect(group.value!.t3, 1.0);
        expect(group.value!.t4, "value");
        expect(group is AsyncData, true);
      });
      test("#AsyncLoading", () {
        const AsyncValue<int> t1 = AsyncData(1);
        const AsyncValue<String> t2 = AsyncLoading();
        const AsyncValue<double> t3 = AsyncData(1.0);
        const AsyncValue<String> t4 = AsyncData("value");
        final group = AsyncValueGroup.group4(t1, t2, t3, t4);
        expect(group.value, null);
        expect(group.isLoading, true);
        expect(group is AsyncLoading, true);
      });
      test("#AsyncError", () {
        const AsyncValue<int> t1 = AsyncData(1);
        const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
        const AsyncValue<double> t3 = AsyncData(1.0);
        const AsyncValue<String> t4 = AsyncData("value");
        final group = AsyncValueGroup.group4(t1, t2, t3, t4);
        expect(group.asData?.valueOrNull, null);
        expect(group.error, isNotNull);
        expect(group is AsyncError, true);
      });
    });
  });
}
