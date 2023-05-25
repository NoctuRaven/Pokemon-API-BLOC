import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_bloc.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_event.dart';
import 'package:pokedex_bloc/layers/presentation/bloc/pokemon_list_bloc/pokemon_list_state.dart';
import 'package:pokedex_bloc/layers/presentation/pages/component/plist_component.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    final listbloc =context.read<ListBloc>();
    listbloc.add(OnloadList());
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokedex'),
      ),
      body: Center(
       child: BlocBuilder<ListBloc, ListState>(
          bloc: listbloc,
          builder: (context, state) {
            if(state.listPokemon.isEmpty){
              return CircularProgressIndicator();
            }
            return GridView.builder(
              itemCount: state.listPokemon.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
             itemBuilder: (context, index) {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: PListComponent(state.listPokemon[index]),
               );
             },);
          },
        ),
      ),
    );
  }
}
