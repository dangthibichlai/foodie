import 'package:flutter/material.dart';
import 'package:foodie_callback_flutter/models/food_model.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(this.food, {super.key, this.onEdit});

  final Function()? onEdit;
  final FoodModel food;

  @override
  Widget build(BuildContext context) {
    const radius = 12.0;
    return Container(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.orange, width: 1.2),
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 3.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Image.asset(food.imageStr ?? '',
                width: 110.0, fit: BoxFit.contain),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  food.name ?? '',
                  style: const TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 6.0),
                Text(
                  food.description ?? '',
                  style: const TextStyle(color: Colors.grey),
                  textAlign: TextAlign.left,
                ),
                Row(
                  children: [
                    Text((food.price ?? 0.0).toStringAsFixed(2)),
                    const Text(
                      '\$',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add,
                          size: 18.0, color: Colors.orange),
                    ),
                    Text(
                      '${food.quantity ?? 0}',
                      style: const TextStyle(color: Colors.red),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove,
                          size: 18.0, color: Colors.orange),
                    )
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Total Price: ',
                      style: TextStyle(color: Colors.orange),
                    ),
                    Text('${food.total}'),
                    const Text(
                      '\$',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: onEdit,
                      child: Container(
                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.only(right: 8.6, bottom: 6.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(0.6),
                        ),
                        child: const Icon(Icons.edit,
                            size: 18.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
