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
      viewModel.getRead(127.0286009,37.2635727).then(
            (value) => setState(() {}),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨 정보앱'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('위도:${viewModel.weatherData?.latitude ?? ''}'),
            Text('경도:${viewModel.weatherData?.longitude ?? ''}'),
            Text('온도 :${viewModel.weatherData?.hourly.temperature2m.toString() ?? ''}°C'),
            Text('상대습도 :${viewModel.weatherData?.hourly.relativeHumidity2m.toString() ?? ''}%'),
            Text('풍속 :${viewModel.weatherData?.hourly.windSpeed10m.toString() ?? ''}km/h(mph)'),

          ],
        ),
      ),
    );
  }
}
