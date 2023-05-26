import 'package:apple_store/screens/single_product.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../global_variables.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundryColor,
      appBar: productsAppbar(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: GridView(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
              childAspectRatio: 0.8),
          children: [
            for (int i = 0; i < 10; i++) ...[
              GestureDetector(
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: const SingleProductPage(),
                    withNavBar: false,
                  );
                  // Navigator.popUntil(context, (route) => route.isFirst);
                  // Navigator.pushAndRemoveUntil(context,
                  //     MaterialPageRoute(builder: (context) {
                  //   return const SingleProductPage();
                  // }), (route) => route.isFirst);
                },
                child: Container(
                  // height: 240,
                  // width: 150,
                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.only(
                      left: 14, top: 10, bottom: 10, right: 14),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apple",
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 12),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 90,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        "Apple Inc",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 8, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "price",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w600),
                      ),
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
                ),
              )
            ]
          ],
        ),
      ),
    );
  }

  AppBar productsAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        "Products",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(height: 1.2),
      ),
      actions: [
        Container(
          // padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(color: whiteColor, shape: BoxShape.circle),
          child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: Icon(
                Icons.tune_rounded,
                color: blackColor,
              )),
        )
      ],
    );
  }
}
