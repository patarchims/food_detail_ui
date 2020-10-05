import 'package:flutter/material.dart';
import 'package:food_detail/models/ingredients.dart';
import 'package:food_detail/shared/theme.dart';

class DasboardPage extends StatefulWidget {
  @override
  _DasboardPageState createState() => _DasboardPageState();
}

class _DasboardPageState extends State<DasboardPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 41,
                    width: 41,
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: blackColor,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: dartGrey),
                  ),
                  Container(
                    height: 41,
                    width: 41,
                    child: Container(
                      width: 20,
                      height: 7,
                      padding: EdgeInsets.all(5),
                      child: Image(
                        image: AssetImage("images/dashboard.png"),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: whiteColor),
                  )
                ],
              ),
            ),
            Container(
              height: 155,
              width: 186,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/food.png"))),
            ),
            Container(
              height: MediaQuery.of(context).size.height -
                  155 -
                  41 -
                  2 * defaultMargin,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50))),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Mie Soup",
                            style: TextStyle(
                                color: blackColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w800)),
                        Container(
                          margin: EdgeInsets.only(left: 11),
                          child: Text(
                            "450g",
                            style: TextStyle(
                                color: dartGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 94,
                          height: 29,
                          decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 6,
                                height: 1.5,
                                child: Image(
                                  image: AssetImage("images/minus.png"),
                                ),
                              ),
                              Container(
                                width: 2,
                                height: 16,
                                decoration: BoxDecoration(
                                    color: dartGrey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Text(
                                "1",
                                style: TextStyle(
                                    color: blackColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 12),
                              ),
                              Container(
                                width: 2,
                                height: 16,
                                decoration: BoxDecoration(
                                    color: dartGrey,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              Container(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Rp. 15.000",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Mi Soup adalah adonan tipis dan panjang yang telah digulung, dikeringkan, dan dimasak dalam air mendidih. Istilah ini juga merujuk kepada mi kering yang harus dimasak kembali dengan dicelupkan dalam air.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: blackColor, fontSize: 16),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Ingredients",
                        style: TextStyle(
                            color: blackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 200,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: ingredientsFood.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return Container(
                                height: 56,
                                width: 40,
                                margin: EdgeInsets.only(
                                  right: defaultMargin,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            color: lightGrey,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ingredientsFood[index]
                                                        .image
                                                        .toString())))),
                                    SizedBox(height: 8),
                                    Text(
                                        ingredientsFood[index].title.toString(),
                                        style: TextStyle(
                                            color: blackColor, fontSize: 10)),
                                  ],
                                ),
                              );
                            }),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  height: 68,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      "Add to card",
                      style: TextStyle(
                          color: whiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: blackColor),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
