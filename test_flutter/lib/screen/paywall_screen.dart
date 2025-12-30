import 'package:flutter/material.dart';
import '../service/subscription_storage.dart';
import 'home_screen.dart';

class PaywallScreen extends StatefulWidget {
  const PaywallScreen({super.key});

  @override
  State<PaywallScreen> createState() => _PaywallScreenState();
}

class _PaywallScreenState extends State<PaywallScreen> {
  String selectedPlan = 'month';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Подписка')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            _planTile(
              title: 'Месяц',
              subtitle: '299 ₽ / месяц',
              value: 'month',
            ),
            _planTile(
              title: 'Год',
              subtitle: '1999 ₽ / год (скидка)',
              value: 'year',
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text('Продолжить'),
                onPressed: () async {
                  // Эмуляция покупки
                  await SubscriptionStorage.subscribe();

                  if (!mounted) return;

                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                        (_) => false,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _planTile({
    required String title,
    required String subtitle,
    required String value,
  }) {
    return Card(
      child: RadioListTile<String>(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        groupValue: selectedPlan,
        onChanged: (v) => setState(() => selectedPlan = v!),
      ),
    );
  }
}
