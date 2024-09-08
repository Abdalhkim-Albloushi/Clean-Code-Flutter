import 'package:flutter/material.dart';
import 'package:shifa_app/core/utils/app_strings.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    final arguments = routeSettings.arguments as Map<dynamic, dynamic>?;
    switch (routeSettings.name) {
      // case Routes.spView:
      //   return MaterialPageRoute(
      //     builder: (context) {
      //       return const SplashScreen();
      //     },
      //   );

      // case Routes.commentsView:
      //   return myRoute(page: const CommentsView());
      // case Routes.allImageView:
      //   return FadeInAndScalePageRoute(
      //     child: BlocProvider.value(
      //       value: HisotryCubit(
      //         addHistoryImageUseCase: appGetIt(),
      //         deleteHistoryImageUseCase: appGetIt(),
      //         getHistoryImageUseCase: appGetIt(),
      //         addMessageHistoryUseCase: appGetIt(),
      //         getHistoryMessagesUseCase: appGetIt(),
      //       ),
      //       child: const ImagesView(),
      //     ),
      //   );

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
