import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wather_app/presentation/main/main_veiw_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MainViewModel>();
      viewModel.getRead(22.0,4.0).then(
            (value) => setState(() {}),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          children: [
            Text(viewModel.weatherData?.latitude.toString() ?? ''),
            Text(viewModel.weatherData?.longitude.toString() ?? ''),
            Text('온도 :${viewModel.weatherData?.hourly.temperature2m.toString() ?? ''}°C'),
            Text('상대습도 :${viewModel.weatherData?.hourly.relativeHumidity2m.toString() ?? ''}%'),
            Text('풍속 :${viewModel.weatherData?.hourly.windSpeed10m.toString() ?? ''}km/h(mph)'),

          ],
        ),
      ),
    );
  }
}
