import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:weather_api/screens/bloc/supabase_data/city_state.dart';
// import 'package:weather_api/screens/bloc/supabase_data/city_state.dart';
import 'package:weather_api/services/supabaseData.dart';

part 'city_event.dart';
part 'city_state.dart';

class CityBloc extends Bloc<CityEvent, CityState> {
  CityBloc() : super(CityInitial()) {
    // ----- Get city Event
    on<GetCityEvent>((event, emit) async {
      emit(LoadinCitygState());
      try {
        final List Cities = await getCities();
        emit(GetCitiesSuccessedState(Cities));
      } catch (e) {
        emit(FailedCityState());
      }
    });
    // ----- Add city Event
    on<AddCityEvent>((event, emit) async {
      emit(LoadinCitygState());

      try {
        await addCity(event.cityName);
        emit(AddCitytSuccessedState());
      } catch (e) {
        emit(FailedCityState());
      }
    });
  }
}
