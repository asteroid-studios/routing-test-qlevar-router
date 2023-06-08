// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:routing_test/components/shell/shell.dart' as _i11;
import 'package:routing_test/features/auth/pages/account/account_page.dart'
    as _i5;
import 'package:routing_test/features/auth/pages/login/login_page.dart' as _i6;
import 'package:routing_test/features/community/pages/community/community_page.dart'
    as _i9;
import 'package:routing_test/features/community/pages/post/post_page.dart'
    as _i8;
import 'package:routing_test/features/community/pages/thread/thread_page.dart'
    as _i10;
import 'package:routing_test/features/discover/pages/discover/discover_page.dart'
    as _i3;
import 'package:routing_test/features/discover/pages/player/player_page.dart'
    as _i4;
import 'package:routing_test/features/home/pages/favourites/favourites_page.dart'
    as _i2;
import 'package:routing_test/features/home/pages/home/home_page.dart' as _i1;
import 'package:routing_test/features/you/pages/you/you_page.dart' as _i7;
import 'package:routing_test/router/router.dart' as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    FavouritesRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FavouritesPage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiscoverPage(),
      );
    },
    PlayerRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PlayerRouteArgs>(
          orElse: () => PlayerRouteArgs(id: pathParams.getString('id')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PlayerPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    AccountRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.AccountPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    YouRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.YouPage(),
      );
    },
    PostRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<PostRouteArgs>(
          orElse: () => PostRouteArgs(id: pathParams.getString('id')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.PostPage(
          id: args.id,
          key: args.key,
        ),
      );
    },
    CommunityRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.CommunityPage(),
      );
    },
    ThreadRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ThreadRouteArgs>(
          orElse: () => ThreadRouteArgs(
                id: pathParams.getString('id'),
                postId: pathParams.getString('postId'),
              ));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ThreadPage(
          id: args.id,
          postId: args.postId,
          key: args.key,
        ),
      );
    },
    Shell.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.Shell(),
      );
    },
    HomeTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.HomeTabPage(),
      );
    },
    DiscoverTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.DiscoverTabPage(),
      );
    },
    CommunityTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.CommunityTabPage(),
      );
    },
    YouTab.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.YouTabPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FavouritesPage]
class FavouritesRoute extends _i13.PageRouteInfo<void> {
  const FavouritesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FavouritesRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouritesRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DiscoverPage]
class DiscoverRoute extends _i13.PageRouteInfo<void> {
  const DiscoverRoute({List<_i13.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PlayerPage]
class PlayerRoute extends _i13.PageRouteInfo<PlayerRouteArgs> {
  PlayerRoute({
    required String id,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PlayerRoute.name,
          args: PlayerRouteArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PlayerRoute';

  static const _i13.PageInfo<PlayerRouteArgs> page =
      _i13.PageInfo<PlayerRouteArgs>(name);
}

class PlayerRouteArgs {
  const PlayerRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i14.Key? key;

  @override
  String toString() {
    return 'PlayerRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i5.AccountPage]
class AccountRoute extends _i13.PageRouteInfo<void> {
  const AccountRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.YouPage]
class YouRoute extends _i13.PageRouteInfo<void> {
  const YouRoute({List<_i13.PageRouteInfo>? children})
      : super(
          YouRoute.name,
          initialChildren: children,
        );

  static const String name = 'YouRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.PostPage]
class PostRoute extends _i13.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    required String id,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PostRoute.name,
          args: PostRouteArgs(
            id: id,
            key: key,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static const _i13.PageInfo<PostRouteArgs> page =
      _i13.PageInfo<PostRouteArgs>(name);
}

class PostRouteArgs {
  const PostRouteArgs({
    required this.id,
    this.key,
  });

  final String id;

  final _i14.Key? key;

  @override
  String toString() {
    return 'PostRouteArgs{id: $id, key: $key}';
  }
}

/// generated route for
/// [_i9.CommunityPage]
class CommunityRoute extends _i13.PageRouteInfo<void> {
  const CommunityRoute({List<_i13.PageRouteInfo>? children})
      : super(
          CommunityRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommunityRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ThreadPage]
class ThreadRoute extends _i13.PageRouteInfo<ThreadRouteArgs> {
  ThreadRoute({
    required String id,
    required String postId,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ThreadRoute.name,
          args: ThreadRouteArgs(
            id: id,
            postId: postId,
            key: key,
          ),
          rawPathParams: {
            'id': id,
            'postId': postId,
          },
          initialChildren: children,
        );

  static const String name = 'ThreadRoute';

  static const _i13.PageInfo<ThreadRouteArgs> page =
      _i13.PageInfo<ThreadRouteArgs>(name);
}

class ThreadRouteArgs {
  const ThreadRouteArgs({
    required this.id,
    required this.postId,
    this.key,
  });

  final String id;

  final String postId;

  final _i14.Key? key;

  @override
  String toString() {
    return 'ThreadRouteArgs{id: $id, postId: $postId, key: $key}';
  }
}

/// generated route for
/// [_i11.Shell]
class Shell extends _i13.PageRouteInfo<void> {
  const Shell({List<_i13.PageRouteInfo>? children})
      : super(
          Shell.name,
          initialChildren: children,
        );

  static const String name = 'Shell';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.HomeTabPage]
class HomeTab extends _i13.PageRouteInfo<void> {
  const HomeTab({List<_i13.PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.DiscoverTabPage]
class DiscoverTab extends _i13.PageRouteInfo<void> {
  const DiscoverTab({List<_i13.PageRouteInfo>? children})
      : super(
          DiscoverTab.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.CommunityTabPage]
class CommunityTab extends _i13.PageRouteInfo<void> {
  const CommunityTab({List<_i13.PageRouteInfo>? children})
      : super(
          CommunityTab.name,
          initialChildren: children,
        );

  static const String name = 'CommunityTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.YouTabPage]
class YouTab extends _i13.PageRouteInfo<void> {
  const YouTab({List<_i13.PageRouteInfo>? children})
      : super(
          YouTab.name,
          initialChildren: children,
        );

  static const String name = 'YouTab';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
