import 'package:flutter/material.dart';

class ProductColorPicker extends StatelessWidget {
  final Color color;
  final VoidCallback callback;
  final bool? isActive;

  const ProductColorPicker(
      {super.key, required this.color, required this.callback, this.isActive});
  @override
  Widget build(BuildContext context) {
    return (isActive == true)
        ? Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.circle,
                color: color,
                size: 26,
              ),
            ),
          )
        : Icon(
            Icons.circle,
            color: color,
            size: 26,
          );
  }
}
