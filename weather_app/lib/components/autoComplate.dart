import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/data/cities.dart';
import 'package:weather_api/bloc/weather_data/weather_data_bloc.dart';
import 'package:weather_api/screens/home_screen.dart';

class AutoComplate extends StatefulWidget {
  const AutoComplate({super.key});

  @override
  State<AutoComplate> createState() => _AutoComplateState();
}

class _AutoComplateState extends State<AutoComplate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Enter city name"),
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return cities.where(
                (element) {
                  return element
                      .toLowerCase()
                      .contains(textEditingValue.text.toLowerCase());
                },
              );
            },
            // fieldViewBuilder: (
            //   BuildContext context,
            //     TextEditingController
            //         fieldTextEditingController,
            //     FocusNode fieldFocusNode,
            //     VoidCallback onFieldSubmitted) {
            //   return TextFieldWidget(
            //     focusNode: fieldFocusNode,
            //     controller:
            //         fieldTextEditingController,
            //     onSubmitted: (name) {
            //       city = name;
            //       context.read<WeatherDataBloc>().add(
            //           SearchWeatherDataEvent(name));
            //     },
            //   );
            // },
            onSelected: (String name) async {
              city = name;
              context.read<WeatherDataBloc>().add(SearchWeatherDataEvent(name));
            },
          ),
        ],
      ),
    );
  }
}
