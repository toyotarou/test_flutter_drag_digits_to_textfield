import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_params/app_params.dart';

mixin ControllersMixin<T extends ConsumerStatefulWidget> on ConsumerState<T> {
  //==========================================//

  AppParamsState get appParamState => ref.watch(appParamsProvider);

  AppParams get appParamNotifier => ref.read(appParamsProvider.notifier);

  //==========================================//
}
