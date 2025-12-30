import 'package:flutter/material.dart';
import 'package:test_flutter/screen/home_screen.dart';
import 'package:test_flutter/screen/onboarding_screen.dart';
import 'package:test_flutter/service/subscription_storage.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final isSubscribed = await SubscriptionStorage.isSubscribed();

  runApp(MyApp(isSubscribed: isSubscribed));
}

class MyApp extends StatelessWidget {
  final bool isSubscribed;

  const MyApp({super.key, required this.isSubscribed});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        useMaterial3: true,
      ),
      home: isSubscribed ? const HomeScreen() : const OnboardingScreen(),
    );
  }
}
