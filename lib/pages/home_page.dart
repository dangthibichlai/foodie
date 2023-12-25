import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie_callback_flutter/components/food_item.dart';
import 'package:foodie_callback_flutter/models/food_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  double get totalPrice {
    double total = 0.0;
    for (var food in foods) {
      total += food.total;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0).copyWith(
              top: MediaQuery.of(context).padding.top + 22.0, bottom: 20.0),
          child: Column(
            children: [
              const Text(
                'Foodies',
                style: TextStyle(color: Colors.red, fontSize: 28.0),
              ),
              const SizedBox(height: 18.0),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                children: [
                  ...List.generate(foods.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.6),
                      child: FoodItem(foods[index]),
                    );
                  })
                ],
              ),
              const SizedBox(height: 10.0),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Total Price: ',
                  style: const TextStyle(color: Colors.orange, fontSize: 20.0),
                  children: <TextSpan>[
                    TextSpan(
                      text: totalPrice.toStringAsFixed(2),
                      style: const TextStyle(
                          color: Colors.brown, fontWeight: FontWeight.w400),
                    ),
                    const TextSpan(
                      text: '\$',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w500),
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
