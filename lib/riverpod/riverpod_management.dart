import 'package:flutter_get_post_token/riverpod/home_riverpod.dart';
import 'package:flutter_get_post_token/riverpod/login_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginRiverpod = ChangeNotifierProvider((_) => LoginRiverpod());
final homeRiverpod = ChangeNotifierProvider((_) => HomeRiverpod());
