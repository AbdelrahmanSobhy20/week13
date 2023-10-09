import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(
                    width: 210,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Stack(children: [
                  Container(
                    height: 450,
                    width: 300,
                    decoration: const BoxDecoration(
                        color: Color(0xff000000),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/t-shirt2.png",
                        height: 400,
                        width: 300,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Color(0xffe6323e),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 5,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xff727272),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 5,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Color(0xff444444),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    size("S", const Color(0xff2a2a2a)),
                    size("L", const Color(0xff2a2a2a)),
                    size("M", const Color(0xffe6323e)),
                    size("XL", const Color(0xff2a2a2a)),
                    size("2XL", const Color(0xff2a2a2a)),
                  ],
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
              child: const Text(
                "Belgium EURO",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Audiowide",
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: const Text(
                "20/21 Away by Adidas",
                style: TextStyle(
                  color: Color(0xff848484),
                  fontFamily: "Audiowide",
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Rate(iconBuilder: _customIconBuilder),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "4.0",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Audiowide",
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    height: 45,
                    width: 125,
                    decoration: BoxDecoration(
                        color: const Color(0xff343434),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(7),
                          padding: const EdgeInsets.all(1),
                          height: 35,
                          width: 35,
                          child: Center(
                            child: FloatingActionButton(
                                onPressed: () {},
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                backgroundColor: const Color(0xFFe6323e),
                                child: const Icon(Icons.remove)),
                          ),
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Audiowide",
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(7),
                          padding: const EdgeInsets.all(1),
                          height: 35,
                          width: 35,
                          child: Center(
                            child: FloatingActionButton(
                                onPressed: () {},
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                backgroundColor: const Color(0xFFe6323e),
                                child: const Icon(Icons.add)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        secondpasrtoftext("Details"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            firstpasrtoftext("Material:"),
                            secondpasrtoftext(" Polyester")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            firstpasrtoftext("Shipping:"),
                            secondpasrtoftext(" In 5 to 6 Days")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            firstpasrtoftext("Returns:"),
                            secondpasrtoftext(" Within 20 Days")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ]),
                  Container(
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(
                        color:
                            const Color(0xFFe6323e), // const Color(0xff2a2a2a)
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.shopping_bag_outlined,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          "\$89",
                          style: TextStyle(
                            fontSize: 30,
                            fontFamily: "Audiowide",
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget size(String x, Color y) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 15),
    height: 50,
    width: 50,
    decoration: BoxDecoration(
        color: y, // const Color(0xff2a2a2a)
        borderRadius: BorderRadius.circular(10)),
    child: Center(
      child: Text(
        x,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Audiowide",
          color: Colors.white,
        ),
      ),
    ),
  );
}

Icon _customIconBuilder(double value, int index) {
  var icon =
      value > index.toDouble() ? Icons.star_rounded : Icons.star_border_rounded;

  return Icon(
    icon,
    color: Colors.red,
    size: 30,
  );
}

Widget firstpasrtoftext(String x) {
  return Text(
    x,
    style: const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
      fontFamily: "Audiowide",
      color: Colors.white,
    ),
  );
}

Widget secondpasrtoftext(String y) {
  return Text(
    y,
    style: const TextStyle(
      fontSize: 19,
      fontFamily: "Audiowide",
      color: Color(0xffA9A9A9),
    ),
  );
}
