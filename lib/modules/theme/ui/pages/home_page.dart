import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc_ecomputer/modules/theme/bloc/theme_bloc.dart';
import 'package:theme_bloc_ecomputer/modules/theme/cubit/theme_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final int randInt = Random().nextInt(10);
            print(randInt);
            // bool myBoolTheme() {
            //   AppTheme myAppTheme = context.read<ThemeBloc>().state.appTheme;
            //   if (myAppTheme == AppTheme.light) {
            //     return false;
            //   } else {
            //     return true;
            //   }
            // }

            // bool myResult = myBoolTheme();
            // print(myResult);

            // context.read<ThemeBloc>().add(ChangeThemeEvent(randInt: randInt));
            context.read<ThemeCubit>().changeTheme(randInt);
          },
          child: const Text(
            'Change Theme',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ),
    );
  }
}
