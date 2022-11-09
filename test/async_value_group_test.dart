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
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
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
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      final group = AsyncValueGroup.group3(t1, t2, t3);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
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
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      final group = AsyncValueGroup.group4(t1, t2, t3, t4);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group5", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      final group = AsyncValueGroup.group5(t1, t2, t3, t4, t5);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      final group = AsyncValueGroup.group5(t1, t2, t3, t4, t5);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      final group = AsyncValueGroup.group5(t1, t2, t3, t4, t5);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group6", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      final group = AsyncValueGroup.group6(t1, t2, t3, t4, t5, t6);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      final group = AsyncValueGroup.group6(t1, t2, t3, t4, t5, t6);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      final group = AsyncValueGroup.group6(t1, t2, t3, t4, t5, t6);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group7", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      final group = AsyncValueGroup.group7(t1, t2, t3, t4, t5, t6, t7);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      final group = AsyncValueGroup.group7(t1, t2, t3, t4, t5, t6, t7);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      final group = AsyncValueGroup.group7(t1, t2, t3, t4, t5, t6, t7);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group8", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      final group = AsyncValueGroup.group8(t1, t2, t3, t4, t5, t6, t7, t8);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      final group = AsyncValueGroup.group8(t1, t2, t3, t4, t5, t6, t7, t8);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      final group = AsyncValueGroup.group8(t1, t2, t3, t4, t5, t6, t7, t8);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group9", () {
    test("#AsyncValue", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncData("value");
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      final group = AsyncValueGroup.group9(t1, t2, t3, t4, t5, t6, t7, t8, t9);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group is AsyncData, true);
    });
    test("#AsyncLoading", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncLoading();
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      final group = AsyncValueGroup.group9(t1, t2, t3, t4, t5, t6, t7, t8, t9);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 =
          AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      final group = AsyncValueGroup.group9(t1, t2, t3, t4, t5, t6, t7, t8, t9);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });
}
