import 'dart:async';

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));
  return "Weather: Sunny, Temperature: 25°C";
}

void main() async {
  try {
    print("Fetching weather data...");
    String weather = await fetchWeatherData();
    print(weather);
  } catch (e) {
    print("Error: $e");
  }
}
