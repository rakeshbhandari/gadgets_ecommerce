import 'package:ecommerce_gadgets/presentation/widgets/browsing%20_history_tile.dart';
import 'package:ecommerce_gadgets/presentation/widgets/chip_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkspacePage extends StatelessWidget {
  const WorkspacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('cartpage');
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.shopping_cart_outlined)),
      appBar: AppBar(
        title: const Text('Explore Workspaces',
            style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        elevation: 0,
        // backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(6)),
                  height: 100,
                  margin: const EdgeInsets.all(2.0),
                  child: const TextField(
                      decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'What are you looking for? ',
                  )),
                ),
                SizedBox(
                  // height: 310,
                  // color: Colors.orange,
                  child: Stack(children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.center,
                          colors: [
                            Colors.grey,
                            Colors.black,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.black,
                      ),
                      height: 239,
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Featured Workspaces',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            const SizedBox(
                              height: 80,
                            ),
                            const SizedBox(height: 10),
                            GestureDetector(
                                onTap: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      'View Space',
                                      style: TextStyle(
                                          color: Colors.yellow,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        // topRight: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Image.asset(
                          'assets/speaker.png',
                          fit: BoxFit.fitWidth,
                          height: 250,
                          width: 800,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 80, left: 16),
                      child: Text(
                        'Professional Gaming \nAccessories',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Browse Workspaces',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Text(
                              'See More',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    chipWidgets('Show all'),
                    chipWidgets('Developer'),
                    chipWidgets('Filmaking'),
                    chipWidgets('Gaming'),
                    chipWidgets('Music'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'What',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        TextSpan(
                            text: ' Youtubers',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                        TextSpan(
                            text: ' Search for? ',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20))
                      ]),
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.toNamed('youtuberspage');
                        },
                        child: const Row(
                          children: [
                            Text(
                              'See More',
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        )),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                // SizedBox(
                //   height: 400,
                //   child: ListView.builder(
                //     itemBuilder: (context, index) => Container(
                //         height: 100,
                //         width: 200,
                //         decoration: BoxDecoration(
                //             color: Colors.red,
                //             border: Border.all(color: Colors.black))),
                //     itemCount: 3,
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //   ),
                // ),
                // Flexible(
                //   fit: FlexFit.tight,
                //   child: SizedBox(
                //     height: 700,
                //     child: ListView.builder(
                //       itemBuilder: (context, index) => productTile(),
                //       itemCount: 3,
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xff8A8B7A)),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'PEOPLE SEARCH FOR',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 19),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/laptop1.png',
                              height: 70,
                              width: 80,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Developer',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '2 suggested items',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ])
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/laptop2.png',
                              height: 70,
                              width: 80,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Digital Marketing',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '8 suggested items',
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ])
                          ],
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'BASED ON YOUR BROWSING HISTORY',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    // height: 180,
                    child: ListView.builder(
                  itemBuilder: (context, index) => browsingTile(),
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
