// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CryptoCoinRoute.name: (routeData) {
      final arg = routeData.argsAs<CryptoCoin>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CryptoCoinScreen(coin: arg),
      );
    },
    CryptoListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CryptoListScreen(),
      );
    },
  };
}

/// generated route for
/// [CryptoCoinScreen]
class CryptoCoinRoute extends PageRouteInfo<CryptoCoin> {
  const CryptoCoinRoute({List<PageRouteInfo>? children, required CryptoCoin coin})
      : super(
          CryptoCoinRoute.name,
          args: coin,
          initialChildren: children,
        );

  static const String name = 'CryptoCoinRoute';

  static const PageInfo<CryptoCoin> page = PageInfo<CryptoCoin>(name);
}

/// generated route for
/// [CryptoListScreen]
class CryptoListRoute extends PageRouteInfo<void> {
  const CryptoListRoute({List<PageRouteInfo>? children})
      : super(
          CryptoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'CryptoListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}