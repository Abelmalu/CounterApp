import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ju_general/bloc/counter_bloc.dart';
import 'package:ju_general/cubit/counter_cubit.dart';

import 'bloc/counter_bloc.dart';

class IncDecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final counterBloc = BlocProvider.of<CounterBloc>(context);
   
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterIncremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterDecremented());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.minimize),
          ),
        ],
      ),
    );
  }
}
