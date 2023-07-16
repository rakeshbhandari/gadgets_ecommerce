import 'package:ecommerce_gadgets/presentation/widgets/chip_widgets.dart';
import 'package:flutter/material.dart';

class WorkspacePage extends StatelessWidget {
  const WorkspacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Container(
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            //   height: 100,
            //   margin: const EdgeInsets.all(2.0),
            //   child: const Row(
            //     children: [
            //       TextField(
            //           decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         hintText: 'What are you looking for? ',
            //       )),
            //       Icon(Icons.filter_hdr_sharp)
            //     ],
            //   ),
            // ),

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
                          style: TextStyle(color: Colors.white, fontSize: 17),
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
                chipWidgets('Content Creator'),
                chipWidgets('Photography'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.grey[200],
                    // image: const DecorationImage(
                    //   image: AssetImage('assets/youtube.png'),
                    //   fit: BoxFit.fill,
                    // )
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                    color: Colors.green,
                  ),
                ),
                Positioned(
                  // top: 2,
                  left: 2,
                  right: 2,
                  bottom: 2,
                  child: Image.asset(
                    'assets/headset.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  right: 10,
                  child: Container(
                    height: 80,
                    width: 200,
                    padding:
                        const EdgeInsets.only(left: 4, right: 4, bottom: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'USB microphone',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text('\$200'),
                          SizedBox(height: 5),
                          Text('4.5 (200 Reviews)'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
