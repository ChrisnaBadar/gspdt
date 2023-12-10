import 'package:gspdt/constants/constants.dart';
import 'package:gspdt/constants/routes.dart';
import './url_strategy_native.dart'
    if (dart.library.html) './url_strategy_web.dart';

bool testMode = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  urlConfig();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings(en: false).COMPANY_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: AppRoutes().routes,
    );
  }
}
