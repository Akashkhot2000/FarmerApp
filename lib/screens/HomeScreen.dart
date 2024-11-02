import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_project_structure/bloc/postbloc/language_bloc/language_bloc_event.dart';
import 'package:flutter_project_structure/router/app_router.gr.dart';
import 'package:sizer/sizer.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final languageState = context.watch<LanguageBloc>().state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          AppLocalizations.of(context)!.home_screen_title,
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          DropdownButton<String>(
            value: languageState.locale,
            items: const [
              DropdownMenuItem(value: 'en', child: Text('English')),
              DropdownMenuItem(value: 'mr', child: Text('Marathi')),
            ],
            onChanged: (locale) {
              if (locale != null) {
                context.read<LanguageBloc>().add(ChangeLanguage(locale));
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.language),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/image3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Text(
              'Connect with Farmers and Access Organic Seeds Today!',
              style: TextStyle(
                fontSize: 25.sp,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
          )
          // ElevatedButton(
          //   onPressed: () {
          //     context.router.push(SignUP());
          //   },
          //   child: Text(AppLocalizations.of(context)!.goToSignUp),
          // ),
        ],
      ),
    );
  }
}
