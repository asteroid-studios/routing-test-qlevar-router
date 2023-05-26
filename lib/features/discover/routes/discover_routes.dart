// import 'package:qlevar_router/qlevar_router.dart';

// import 'package:routing_test/features/discover/pages/discover/discover_page.dart';
// import 'package:routing_test/features/discover/pages/player/player_page.dart';
// import 'package:routing_test/router/meta.dart';

// class DiscoverRoutes {
//   static const String discover = 'discover';
//   static const String content = 'content';

//   static toPlayer(String id) {
//     QR.toName(
//       DiscoverRoutes.content,
//       params: {'id': id},
//     );
//   }

//   final routes = QRoute(
//     name: discover,
//     path: discover,
//     pageType: const QFadePage(),
//     builder: () => const DiscoverPage(),
//     children: [
//       QRoute(
//         name: content,
//         path: '$content/:id',
//         meta: {RouteMeta.showFloatingPlayer: false},
//         builder: () => PlayerPage(
//           id: QR.params['id']?.toString() ?? '',
//         ),
//       ),
//     ],
//   );
// }
