import 'package:async_value_group/tuple.dart';
import 'package:riverpod/riverpod.dart';

/// An extension that groups some [AsyncValue]s into a single [AsyncValue].
extension AsyncValueGroup on AsyncValue {
  static AsyncValue<Tuple2<T1, T2>> group2<T1, T2>(
      AsyncValue<T1> t1, AsyncValue<T2> t2) {
    if (t1 is AsyncLoading || t2 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple2(t1.value as T1, t2.value as T2));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }

  static AsyncValue<Tuple3<T1, T2, T3>> group3<T1, T2, T3>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple3(t1.value as T1, t2.value as T2, t3.value as T3));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple4<T1, T2, T3, T4>> group4<T1, T2, T3, T4>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple4(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple5<T1, T2, T3, T4, T5>> group5<T1, T2, T3, T4, T5>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple5(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple6<T1, T2, T3, T4, T5, T6>> group6<T1, T2, T3, T4, T5, T6>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple6(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple7<T1, T2, T3, T4, T5, T6, T7>> group7<T1, T2, T3, T4, T5, T6, T7>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple7(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>> group8<T1, T2, T3, T4, T5, T6, T7, T8>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple8(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>> group9<T1, T2, T3, T4, T5, T6, T7, T8, T9>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple9(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>> group10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple10(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>> group11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple11(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>> group12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple12(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>> group13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple13(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>> group14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple14(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>> group15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple15(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>> group16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15, AsyncValue<T16> t16) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading || t16 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple16(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15, t16.value as T16));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17>> group17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15, AsyncValue<T16> t16, AsyncValue<T17> t17) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading || t16 is AsyncLoading || t17 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple17(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15, t16.value as T16, t17.value as T17));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18>> group18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15, AsyncValue<T16> t16, AsyncValue<T17> t17, AsyncValue<T18> t18) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading || t16 is AsyncLoading || t17 is AsyncLoading || t18 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple18(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15, t16.value as T16, t17.value as T17, t18.value as T18));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
  
  static AsyncValue<Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19>> group19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15, AsyncValue<T16> t16, AsyncValue<T17> t17, AsyncValue<T18> t18, AsyncValue<T19> t19) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading || t16 is AsyncLoading || t17 is AsyncLoading || t18 is AsyncLoading || t19 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple19(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15, t16.value as T16, t17.value as T17, t18.value as T18, t19.value as T19));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }

  static AsyncValue<Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20>> group20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20>(
      AsyncValue<T1> t1, AsyncValue<T2> t2, AsyncValue<T3> t3, AsyncValue<T4> t4, AsyncValue<T5> t5, AsyncValue<T6> t6, AsyncValue<T7> t7, AsyncValue<T8> t8, AsyncValue<T9> t9, AsyncValue<T10> t10, AsyncValue<T11> t11, AsyncValue<T12> t12, AsyncValue<T13> t13, AsyncValue<T14> t14, AsyncValue<T15> t15, AsyncValue<T16> t16, AsyncValue<T17> t17, AsyncValue<T18> t18, AsyncValue<T19> t19, AsyncValue<T20> t20) {
    if (t1 is AsyncLoading || t2 is AsyncLoading || t3 is AsyncLoading || t4 is AsyncLoading || t5 is AsyncLoading || t6 is AsyncLoading || t7 is AsyncLoading || t8 is AsyncLoading || t9 is AsyncLoading || t10 is AsyncLoading || t11 is AsyncLoading || t12 is AsyncLoading || t13 is AsyncLoading || t14 is AsyncLoading || t15 is AsyncLoading || t16 is AsyncLoading || t17 is AsyncLoading || t18 is AsyncLoading || t19 is AsyncLoading || t20 is AsyncLoading) {
      return const AsyncLoading();
    }
    try {
      return AsyncData(Tuple20(t1.value as T1, t2.value as T2, t3.value as T3, t4.value as T4, t5.value as T5, t6.value as T6, t7.value as T7, t8.value as T8, t9.value as T9, t10.value as T10, t11.value as T11, t12.value as T12, t13.value as T13, t14.value as T14, t15.value as T15, t16.value as T16, t17.value as T17, t18.value as T18, t19.value as T19, t20.value as T20));
    } catch (e, st) {
      return AsyncError(e, st);
    }
  }
}
