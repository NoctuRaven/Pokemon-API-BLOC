import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_bloc.dart';
import 'package:pokedex_bloc/layers/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ListBloc(),
        child: HomePage(),
      ),
    );
  }
}
