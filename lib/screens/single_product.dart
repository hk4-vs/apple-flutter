import 'package:apple_store/custom-widgets/product_color_picker.dart';
import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../global_variables.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({super.key});

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {
  bool isActiveColor = false;
  bool isAboutOpen = true;
  bool isProductdetailsOpen = false;
  bool isDescriptionOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundryColor,
      appBar: singleProductAppbar(context),
      body: singleProductBody(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: buyNowButtonWidget(),
    );
  }

  Container buyNowButtonWidget() {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          "Buy Now",
          style: TextStyle(
              color: whiteColor, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }

  ListView singleProductBody(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        BannerCarousel(
            banners: BannerImages.listBanners, height: 200, onTap: (id) {}),
        Container(
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "M2 Pro 2023",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              rupeeWidget(),
              colorWidget(),
              customAccordion(),             
            ],
          ),
        )
      ],
    );
  }

  Row colorWidget() => Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: ProductColorPicker(
              color: Colors.amber,
              callback: () {},
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: ProductColorPicker(
              color: Colors.black54,
              callback: () {},
              isActive: true,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          GestureDetector(
            child: ProductColorPicker(
              color: Colors.blue,
              callback: () {},
            ),
          )
        ],
      );

  Row rupeeWidget() {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
              text: "By",
              style: TextStyle(color: Colors.black45),
              children: [
                TextSpan(
                    text: " Apple",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500))
              ]),
        ),
        Expanded(child: Container()),
        Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.currency_rupee,
                  color: priceColor,
                  size: 16,
                ),
                Text(
                  "19,999",
                  style: TextStyle(
                      color: primaryColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 20,
                ),
                Text(
                  "5.0",
                  style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                const Text(
                  " (20,000)",
                  style: TextStyle(
                      color: Colors.black45,
                      // fontWeight: FontWeight.w100,
                      fontSize: 10),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  AppBar singleProductAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        "M2 Pro 2023",
        style: Theme.of(context).textTheme.displayLarge!.copyWith(height: 1.2),
      ),
      centerTitle: true,
      leading: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: 40,
        width: 60,
        decoration: BoxDecoration(color: whiteColor, shape: BoxShape.circle),
        child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: blackColor,
            )),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: 40,
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

  Column customAccordion() {
    return Column(
      children: [
        GFAccordion(
          title: 'About',
          textStyle: Theme.of(context).textTheme.headlineSmall!,
          content:
              'Featuring an ultra-high-resolution display and advanced optics, the iVision transports you to a realm where virtual and real worlds seamlessly merge. Whether youre exploring stunning virtual landscapes, collaborating with colleagues in a shared digital workspace, or enjoying interactive gaming like never before, the iVision brings your imagination to life with astonishing clarity and depth.',
          collapsedIcon: const Icon(
            Icons.add,
            color: Colors.black26,
          ),
          expandedIcon: Container(),
          contentBackgroundColor: transParentColor,
          showAccordion: false,
          collapsedTitleBackgroundColor: transParentColor,
          expandedTitleBackgroundColor: transParentColor,
        ),
        GFAccordion(
          title: 'Product Details',
          textStyle: Theme.of(context).textTheme.headlineSmall!,
          content:
              'Featuring an ultra-high-resolution display and advanced optics, the iVision transports you to a realm where virtual and real worlds seamlessly merge. Whether youre exploring stunning virtual landscapes, collaborating with colleagues in a shared digital workspace, or enjoying interactive gaming like never before, the iVision brings your imagination to life with astonishing clarity and depth.',
          collapsedIcon: const Icon(
            Icons.add,
            color: Colors.black26,
          ),
          expandedIcon: Container(),
          contentBackgroundColor: transParentColor,
          showAccordion: false,
          collapsedTitleBackgroundColor: transParentColor,
          expandedTitleBackgroundColor: transParentColor,
        ),
        GFAccordion(
          title: 'Description',
          textStyle: Theme.of(context).textTheme.headlineSmall!,
          content:
              'Featuring an ultra-high-resolution display and advanced optics, the iVision transports you to a realm where virtual and real worlds seamlessly merge. Whether youre exploring stunning virtual landscapes, collaborating with colleagues in a shared digital workspace, or enjoying interactive gaming like never before, the iVision brings your imagination to life with astonishing clarity and depth.',
          collapsedIcon: const Icon(
            Icons.add,
            color: Colors.black26,
          ),
          expandedIcon: Container(),
          contentBackgroundColor: transParentColor,
          showAccordion: false,
          collapsedTitleBackgroundColor: transParentColor,
          expandedTitleBackgroundColor: transParentColor,
        ),
      ],
    );
  }
}

class BannerImages {
  static const String banner1 =
      "https://picjumbo.com/wp-content/uploads/the-golden-gate-bridge-sunset-1080x720.jpg";
  static const String banner2 =
      "https://cdn.mos.cms.futurecdn.net/Nxz3xSGwyGMaziCwiAC5WW-1024-80.jpg";
  static const String banner3 = "https://wallpaperaccess.com/full/19921.jpg";
  static const String banner4 =
      "https://images.pexels.com/photos/2635817/pexels-photo-2635817.jpeg?auto=compress&crop=focalpoint&cs=tinysrgb&fit=crop&fp-y=0.6&h=500&sharp=20&w=1400";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}
