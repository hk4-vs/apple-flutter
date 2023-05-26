import 'package:apple_store/global_variables.dart';
import 'package:apple_store/custom-widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundryColor,
      appBar: homeAppbar(context),
      body: homePageBody(context),
    );
  }

  ListView homePageBody(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        searchWidget(context),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "Popular Products ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Expanded(child: Container()),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
        ),
        const SizedBox(
          height: 240,
          width: double.infinity,
          child: ProductCardWidget(),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Text(
                "Categorys ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Expanded(child: Container()),
              Text(
                "See all",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: primaryColor, fontSize: 14),
              ),
            ],
          ),
        ),
        categoryButtons(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            children: [
              Text(
                "Best Products ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Expanded(child: Container()),
              Text(
                "See all",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: primaryColor, fontSize: 14),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          width: double.infinity,
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.8),
              itemBuilder: (context, index) {
                return Container(
                  height: 240,
                  width: 150,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  padding: const EdgeInsets.only(
                      left: 14, top: 10, bottom: 10, right: 14),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apple",
                          style: Theme.of(context).textTheme.labelSmall),
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
                      Text("price",
                          style: Theme.of(context).textTheme.bodySmall),
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
              }),
        )
      ],
    );
  }

  SizedBox categoryButtons() {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              width: 130,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 40,
                    decoration: BoxDecoration(
                        // shape: BoxShape.circle,
                        color: secundryColor,
                        image: const DecorationImage(
                          image: AssetImage("assets/iPhone.jpg"),
                        )),
                  ),
                  const Text("iPhone")
                ],
              ),
            );
          }),
    );
  }

  Container searchWidget(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true, fillColor: whiteColor,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
          hintText: 'Search "MacBook"',
          hintStyle: Theme.of(context).textTheme.titleSmall,
          suffixIcon: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Icon(
                Icons.search,
                color: whiteColor,
              )),
          // prefix: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              style: BorderStyle.none,
              width: 0.0,
            ),
          ),
        ),
      ),
    );
  }

  AppBar homeAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(
          top: 20,
        ),
        child: RichText(
          text: TextSpan(
            text: '       Select Best Products\n',
            style: Theme.of(context).textTheme.labelMedium,
            children: <TextSpan>[
              TextSpan(
                text: "   For Your Work!",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(height: 1.2),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.userAstronaut,
              color: blackColor,
            ))
      ],
    );
  }
}
