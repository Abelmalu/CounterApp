
import 'package:bloc/bloc.dart';

class CounterIncremented{

  
}
class CounterBloc extends Bloc<CounterIncremented,int>{

  CounterBloc():super(0);
}