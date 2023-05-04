part of 'weather_cubit.dart';

enum WeatherStatus {
  initial,
  loading,
  loaded,
  error,
}

class WeatherState extends Equatable {
  WeatherState(
      {required this.status, required this.weather, required this.error});

  final WeatherStatus status;
  final Weather weather;
  final CustomError error;

  factory WeatherState.initial() {
    return WeatherState(
        status: WeatherStatus.initial,
        weather: Weather.initial(),
        error: CustomError());
  }

  @override
  List<Object?> get props => [status, weather, error];

  @override
  String toString() {
    return 'WeatherState{status=$status, weather=$weather, error=$error}';
  }

  WeatherState copyWith(
      {WeatherStatus? status, Weather? weather, CustomError? error}) {
    return WeatherState(
        status: status ?? this.status,
        weather: weather ?? this.weather,
        error: error ?? this.error);
  }
}
