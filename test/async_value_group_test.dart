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

  group("group10", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      final group =
          AsyncValueGroup.group10(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      final group =
          AsyncValueGroup.group10(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10);
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
      const AsyncValue<String> t10 = AsyncData("value");
      final group =
          AsyncValueGroup.group10(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group11", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      final group =
          AsyncValueGroup.group11(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      final group =
          AsyncValueGroup.group11(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      final group =
          AsyncValueGroup.group11(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group12", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      final group = AsyncValueGroup.group12(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      final group = AsyncValueGroup.group12(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      final group = AsyncValueGroup.group12(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group13", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      final group = AsyncValueGroup.group13(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      final group = AsyncValueGroup.group13(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      final group = AsyncValueGroup.group13(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group14", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      final group = AsyncValueGroup.group14(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      final group = AsyncValueGroup.group14(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      final group = AsyncValueGroup.group14(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group15", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      final group = AsyncValueGroup.group15(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      final group = AsyncValueGroup.group15(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      final group = AsyncValueGroup.group15(
          t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group16", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      final group = AsyncValueGroup.group16(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
      expect(group.value!.t16, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      final group = AsyncValueGroup.group16(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      final group = AsyncValueGroup.group16(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group17", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      final group = AsyncValueGroup.group17(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
      expect(group.value!.t16, "value");
      expect(group.value!.t17, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      final group = AsyncValueGroup.group17(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17);
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      final group = AsyncValueGroup.group17(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group18", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      final group = AsyncValueGroup.group18(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
      expect(group.value!.t16, "value");
      expect(group.value!.t17, "value");
      expect(group.value!.t18, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      final group = AsyncValueGroup.group18(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      final group = AsyncValueGroup.group18(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });

  group("group19", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      final group = AsyncValueGroup.group19(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
      expect(group.value!.t16, "value");
      expect(group.value!.t17, "value");
      expect(group.value!.t18, "value");
      expect(group.value!.t19, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      final group = AsyncValueGroup.group19(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      final group = AsyncValueGroup.group19(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });
  
  group("group20", () {
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      const AsyncValue<String> t20 = AsyncData("value");
      final group = AsyncValueGroup.group20(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20);
      expect(group.value!.t1, 1);
      expect(group.value!.t2, "value");
      expect(group.value!.t3, 1.0);
      expect(group.value!.t4, "value");
      expect(group.value!.t5, "value");
      expect(group.value!.t6, "value");
      expect(group.value!.t7, "value");
      expect(group.value!.t8, "value");
      expect(group.value!.t9, "value");
      expect(group.value!.t10, "value");
      expect(group.value!.t11, "value");
      expect(group.value!.t12, "value");
      expect(group.value!.t13, "value");
      expect(group.value!.t14, "value");
      expect(group.value!.t15, "value");
      expect(group.value!.t16, "value");
      expect(group.value!.t17, "value");
      expect(group.value!.t18, "value");
      expect(group.value!.t19, "value");
      expect(group.value!.t20, "value");
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
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      const AsyncValue<String> t20 = AsyncData("value");
      final group = AsyncValueGroup.group20(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20);
      expect(group.value, null);
      expect(group.isLoading, true);
      expect(group is AsyncLoading, true);
    });
    test("#AsyncError", () {
      const AsyncValue<int> t1 = AsyncData(1);
      const AsyncValue<String> t2 = AsyncError(FormatException(""), StackTrace.empty);
      const AsyncValue<double> t3 = AsyncData(1.0);
      const AsyncValue<String> t4 = AsyncData("value");
      const AsyncValue<String> t5 = AsyncData("value");
      const AsyncValue<String> t6 = AsyncData("value");
      const AsyncValue<String> t7 = AsyncData("value");
      const AsyncValue<String> t8 = AsyncData("value");
      const AsyncValue<String> t9 = AsyncData("value");
      const AsyncValue<String> t10 = AsyncData("value");
      const AsyncValue<String> t11 = AsyncData("value");
      const AsyncValue<String> t12 = AsyncData("value");
      const AsyncValue<String> t13 = AsyncData("value");
      const AsyncValue<String> t14 = AsyncData("value");
      const AsyncValue<String> t15 = AsyncData("value");
      const AsyncValue<String> t16 = AsyncData("value");
      const AsyncValue<String> t17 = AsyncData("value");
      const AsyncValue<String> t18 = AsyncData("value");
      const AsyncValue<String> t19 = AsyncData("value");
      const AsyncValue<String> t20 = AsyncData("value");
      final group = AsyncValueGroup.group20(t1, t2, t3, t4, t5, t6, t7, t8, t9,
          t10, t11, t12, t13, t14, t15, t16, t17, t18, t19, t20);
      expect(group.asData?.valueOrNull, null);
      expect(group.error, isNotNull);
      expect(group is AsyncError, true);
    });
  });
}
