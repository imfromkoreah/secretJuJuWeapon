import 'package:flutter/material.dart';
import 'package:yangdonge_client/screen/screen_index.dart';
import 'package:yangdonge_client/screen/screen_login.dart';
import 'package:yangdonge_client/screen/screen_register.dart';
import 'package:yangdonge_client/screen/screen_splash.dart';

void main() {
  // SharedPreferences 초기 설정시 정상 동작을 위한 코드?
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '양동이',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/index': (context) => const IndexScreen(),
        '/register': (context) => const RegisterScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
