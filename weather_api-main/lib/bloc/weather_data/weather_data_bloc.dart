import 'package:bloc/bloc.dart';
import 'package:weather_api/models/weather2.dart';
import 'package:weather_api/screens/home_screen.dart';
import 'package:weather_api/services/api.dart';

part 'weather_data_event.dart';
part 'weather_data_state.dart';

class WeatherDataBloc extends Bloc<WeatherDataEvent, WeatherDataState> {
  WeatherDataBloc() : super(WeatherDataInitial()) {
    on<GetWeatherDataEvent>((event, emit) async {
      emit(LoadingState());

      try {
        final Weather2 data = await GetApi2().getWeather2(city);
        emit(GetWeatherDataSuccessedState(data));
      } catch (e) {
        emit(FailedState());
      }
    });

    on<SearchWeatherDataEvent>((event, emit) async {
      emit(LoadingState());

      try {
        // final Weather2 data = await GetApi2().getWeather2(event.cityName);
        await GetApi2().getWeather2(event.cityName);
        emit(SearchWeatherDataSuccessedState()); // data
      } catch (e) {
        emit(FailedState());
      }
    });
  }
}
