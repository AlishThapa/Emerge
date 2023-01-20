import 'package:emerge/Model/information.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Model/flash_sale_model.dart';
import '../Model/gadget_model.dart';
import '../product_description.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.format_list_bulleted_outlined,
              color: Colors.black),
          centerTitle: true,
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Trade by',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 5),
            Text(
              'bata',
              style: GoogleFonts.poppins(
                color: Colors.blue,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Column(
                children: [
                  Container(
                    width: 25.0,
                    height: 25.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.5),
                      child: Image(
                        image: AssetImage("assets/image/scenery.png"),
                      ),
                    ),
                  ),
                  // CircleAvatar(
                  //   radius: 20,
                  //   child: Image.asset(
                  //     'assets/image/scenery.png',
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  Row(
                    children: const [
                      Text(
                        'Location',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 10,
                        color: Colors.black,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 57),
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'What are you looking for?',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 9,
                  ),
                  suffixIcon: Icon(Icons.search)),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              scrollDirection: Axis.horizontal,
              itemCount: gadgetModel.length,
              itemBuilder: (context, index) => SizedBox(
                width: 60,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffEEEFF4),
                      child: gadgetModel[index].icon,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      gadgetModel[index].type,
                      style: GoogleFonts.poppins(
                        color: const Color(0xffA6A7AB),
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Latest',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'View all',
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(9)),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 114,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 12),
                  itemCount: information.length,
                  itemBuilder: (context, index) => Container(
                    height: 114,
                    width: 119,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      image: DecorationImage(
                        image: AssetImage(information[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffC4C4C4),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.only(
                                    top: 1, left: 7, right: 7, bottom: 3),
                                child: Text(
                                  information[index].category,
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600, fontSize: 6),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                information[index].deviceName,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 9),
                              ),
                              Text(
                                information[index].price,
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 7),
                              ),
                              const SizedBox(height: 7),
                            ],
                          ),
                          const Positioned(
                            bottom: 5,
                            right: 5,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffE5E9EF),
                              radius: 15,
                              child: Icon(
                                Icons.add,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ), //
                ),
              ),
              const SizedBox(height: 17),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Flash sale',
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'View all',
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductDescription(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 174,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(width: 12),
                        itemCount: saleModel.length,
                        itemBuilder: (context, index) => Container(
                          height: 174,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage(saleModel[index].image),
                                fit: BoxFit.fill),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 7,
                                  left: 7,
                                  child: CircleAvatar(
                                      backgroundColor: const Color(0xffE5E9EF),
                                      child: saleModel[index].icon),
                                ),
                                const Positioned(
                                  bottom: 13,
                                  right: 50,
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xffE5E9EF),
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff545589),
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 9,
                                  right: 7,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xffE5E9EF),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xff545589),
                                    ),
                                  ),
                                ),
                                Positioned(
                                    top: 9,
                                    right: 7,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4, vertical: 4),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF93A3A),
                                          borderRadius:
                                              BorderRadius.circular(9)),
                                      child: Text(
                                        '30% off',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 10,
                                        ),
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC4C4C4),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      child: Text(
                                        saleModel[index].category,
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      saleModel[index].categoryheader,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    const SizedBox(height: 12),
                                    Text(
                                      saleModel[index].price,
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
