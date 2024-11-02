import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/apptheme/theme.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_bloc.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_state.dart';
import 'package:flutter_project_structure/bloc/postbloc/post_bloc.dart';
import 'package:flutter_project_structure/bloc/internetconnectbloc/internetconnection_bloc.dart';
import 'package:flutter_project_structure/repository/post_repository.dart';
import 'package:flutter_project_structure/router/app_router.dart';
import 'package:flutter_project_structure/services/api_service.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectionBloc>(
          create: (context) => ConnectionBloc(),
        ),
        BlocProvider<PostBloc>(
          create: (context) => PostBloc(
            PostRepository(ApiService()),
            BlocProvider.of<ConnectionBloc>(context),
          ),
        ),
        BlocProvider(create: (context) => LanguageBloc()),
      ],
      child: Sizer(builder: (context, orientation, screenType) {
        return BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, languageState) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              routerDelegate: AutoRouterDelegate(
                _appRouter,
              ),
              routeInformationParser: _appRouter.defaultRouteParser(),
              title: 'Flutter Bloc Example',
              locale: Locale(languageState.locale),
              theme: customTheme,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'),
                Locale('mr'),
              ],
            );
          },
        );
      }),
    );
  }
}
