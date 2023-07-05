import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:theme_bloc_ecomputer/modules/theme/bloc/theme_bloc.dart';
import 'package:theme_bloc_ecomputer/modules/theme/cubit/theme_cubit.dart';
import 'package:theme_bloc_ecomputer/modules/theme/ui/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider<ThemeBloc>(
        //   create: (context) => ThemeBloc(),
        // ),
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Material App',
            home: const HomePage(),
            theme: state.appTheme == AppTheme.light
                ? ThemeData.light()
                : ThemeData.dark(),
          );
        },
      ),
    );
  }
}
