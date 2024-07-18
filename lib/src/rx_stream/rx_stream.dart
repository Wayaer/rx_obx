library rx_stream;

import 'dart:async';

part 'get_stream.dart';

part 'mini_stream.dart';

typedef RxCondition = bool Function();
typedef RxOnData<T> = void Function(T data);
typedef RxCallback = void Function();
