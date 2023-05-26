import 'package:flutter/material.dart';

import '../global_variables.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            height: 240,
            width: 150,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding:
                const EdgeInsets.only(left: 14, top: 10, bottom: 10, right: 14),
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(12)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Apple", style: Theme.of(context).textTheme.labelSmall),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 100,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      // borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          // image: (imageUrl != null ||
                          //         imageUrl!.isNotEmpty)
                          //     ? NetworkImage("$imageBaseUrl/$imageUrl")
                          //     : NetworkImage(url)
                          image: AssetImage("assets/Apple-iMac.png"))),
                ),
                Text(
                  "Apple-iMac",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text("Apple Inc",
                    style: Theme.of(context).textTheme.bodyMedium),
                Text("price", style: Theme.of(context).textTheme.bodySmall),
                Row(
                  children: [
                    Icon(
                      Icons.currency_rupee,
                      color: primaryColor,
                    ),
                    Text(
                      "199",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 20, color: primaryColor),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
