import 'package:flutter/material.dart';

class PaymentLoadingPage extends StatelessWidget {
  const PaymentLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ожидание оплаты'),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
