library rx_stream;

import 'dart:async';

part 'get_stream.dart';

part 'mini_stream.dart';

typedef Condition = bool Function();
typedef OnData<T> = void Function(T data);
typedef Callback = void Function();
