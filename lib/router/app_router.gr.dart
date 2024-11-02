// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter_project_structure/screens/HomeScreen.dart' as _i1;
import 'package:flutter_project_structure/screens/login.dart' as _i2;
import 'package:flutter_project_structure/screens/PostScreen.dart' as _i3;
import 'package:flutter_project_structure/screens/SignUp.dart' as _i4;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.Login]
class Login extends _i5.PageRouteInfo<void> {
  const Login({List<_i5.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.Login();
    },
  );
}

/// generated route for
/// [_i3.PostScreen]
class PostRoute extends _i5.PageRouteInfo<void> {
  const PostRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.PostScreen();
    },
  );
}

/// generated route for
/// [_i4.SignUP]
class SignUP extends _i5.PageRouteInfo<void> {
  const SignUP({List<_i5.PageRouteInfo>? children})
      : super(
          SignUP.name,
          initialChildren: children,
        );

  static const String name = 'SignUP';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignUP();
    },
  );
}
