import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gateway_frontend/main.dart';
import 'package:gateway_frontend/src/gateway/gateway_details_view.dart';
import 'package:gateway_frontend/src/gateway/gateway_list_view.dart';
import 'package:gateway_frontend/src/router/not_found_screen.dart';
import 'package:gateway_frontend/src/settings/settings_view.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  gateway,
  settings,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: '/',
        name: AppRoute.home.name,
        builder: (context, state) => const GatewayListView(),
        routes: [
          GoRoute(
            path: 'gateway/:id',
            name: AppRoute.gateway.name,
            builder: (context, state) {
              final gatewayId = int.parse(state.params['id']!);
              return GatewayDetailsView(id: gatewayId);
            },
          ),
          GoRoute(
            path: 'settings',
            name: AppRoute.settings.name,
            builder: (context, state) {
              return SettingsView(controller: ref.read(settingsProvider));
            },
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) {

      return const NotFoundScreen();
    },
  );
});
