import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {    Navigator.pop(context);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 10, top: 12),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/image/WhiteShoe.png',
                      height: 300,
                      width: MediaQuery.of(context).size.width * 0.9,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 0,
                      child: Transform.translate(
                        offset: const Offset(20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffE5E9EF),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 3, vertical: 10),
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xffE5E9EF),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Color(0xff545589),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Color(0xffE5E9EF),
                                child: Icon(
                                  Icons.share,
                                  color: Color(0xff545589),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      'assets/image/shoe3.png',
                      height: 48,
                      width: 76,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      'assets/image/shoe2.png',
                      height: 60,
                      width: 93,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: Image.asset(
                      'assets/image/shoe3.png',
                      height: 48,
                      width: 76,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 21),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 17),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'New balance \n Sneakers',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$ 22,50',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Features waterproof,fire, air resistant shoes. all\n changed when the country of fire attacked',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff808080),
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_border,
                          size: 20,
                          color: Colors.yellowAccent,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '3.9',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '(4000 reviews)',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff808080),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Color:',
                      style: GoogleFonts.poppins(
                        color: const Color(0xff808080),
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 26,
                          width: 34,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: const Color(0xffADADAD),
                            ),
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          height: 26,
                          width: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xffADADAD),
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          height: 26,
                          width: 34,
                          decoration: BoxDecoration(
                            color: const Color(0xff181726),
                            borderRadius: BorderRadius.circular(9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xff181726),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24, top: 14),
                        child: Text(
                          'Quantity',
                          style: GoogleFonts.poppins(
                            color: const Color(0xff808080),
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Container(
                              height: 26,
                              width: 34,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xff4E55D7),
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: 26,
                            width: 34,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: const Color(0xff4E55D7),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 23),
                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xff4E55D7),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    '#2500',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                      color: const Color(0xff99A0FF),
                                    ),
                                  ),
                                  Text(
                                    'ADD TO CART',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
