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
      appBar: AppBar(title: const Text('Fitness Pro Premium')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Получите доступ ко всем тренировкам',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            _buildFeature('✓ Более 100 программ тренировок'),
            _buildFeature('✓ Персональные планы'),
            _buildFeature('✓ Отслеживание прогресса'),
            _buildFeature('✓ Без рекламы'),
            const SizedBox(height: 24),
            _planTile(
              title: 'Месяц',
              subtitle: '299 ₽ / месяц',
              value: 'month',
            ),
            _planTile(
              title: 'Год',
              subtitle: '1999 ₽ / год (скидка 44%)',
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

                  if (!context.mounted) return;

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

  Widget _buildFeature(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _planTile({
    required String title,
    required String subtitle,
    required String value,
  }) {
    final isSelected = selectedPlan == value;
    return InkWell(
      onTap: () => setState(() => selectedPlan = value),
      child: Card(
        color: isSelected ? Colors.deepOrange.withValues(alpha: 0.1) : null,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                isSelected ? Icons.check_circle : Icons.circle_outlined,
                color: isSelected ? Colors.deepOrange : Colors.grey,
                size: 28,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
