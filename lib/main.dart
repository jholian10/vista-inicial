import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_app/features/home/presentation/bloc/home_bloc.dart';

import 'features/home/presentation/views/failure_view.dart';
import 'features/home/presentation/views/initial_view.dart';
import 'features/home/presentation/views/loading_view.dart';
import 'features/home/presentation/views/success_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My APP',
          home: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadSuccess) {
                return const Success();
              } else if (state is HomeLoadInProgress) {
                return const Loading();
              } else if (state is HomeLoadFailure) {
                return const Failure();
              }
              return const InitialView();
            },
          )),
    );
  }
}
