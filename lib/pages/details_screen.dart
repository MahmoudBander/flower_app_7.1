// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flower_app/model/item.dart';
import 'package:flower_app/shared/colors.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item product;
  Details({super.key, required this.product});
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: Text(
                      "8",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(211, 164, 255, 193)),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_shopping_cart, color: Colors.white)),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 13",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          )
        ],
        backgroundColor: appbarGreen,
        title: Text(
          "Details screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.product.imgPath,
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              "\$ ${widget.product.price}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    "Now",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                // SizedBox(
                //   width: 4,
                // ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                      size: 26,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                      size: 26,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                      size: 26,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                      size: 26,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 191, 0),
                      size: 26,
                    ),
                  ],
                ),
                SizedBox(
                  width: 155,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
                    Text(
                      widget.product.location,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: Text("Details : ",
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.start)),
            SizedBox(
              height: 16,
            ),
            Text(
              "A flower, also known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers consist of a combination of vegetative organs – sepals that enclose and protect the developing flower. These petals attract pollinators, and reproductive organs that produce gametophytes, which in flowering plants produce gametes. The male gametophytes, which produce sperm, are enclosed within pollen grains produced in the anthers. The female gametophytes are contained within the ovules produced in the ovary.",
              style: TextStyle(fontSize: 16),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? "show more" : "show less",
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
