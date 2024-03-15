import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_timeline/components/end_child.dart';
import 'package:flutter_timeline/components/my_timeline_tile.dart';
import 'package:flutter_timeline/components/secondary_timeline_tile.dart';
import 'package:flutter_timeline/components/start_child.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent),
              backgroundColor: Color(0xff1a1e1b),
              elevation: 0.0,
              pinned: true,
              stretch: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.55,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    SizedBox(height: 90),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://m.media-amazon.com/images/I/61zlcjtfSjL._AC_UF1000,1000_QL80_.jpg"),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "On Time",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyTimelineTile(
                              isFirst: true, isLast: false, isPast: true),
                          MyTimelineTile(
                              isFirst: false, isLast: false, isPast: false),
                          MyTimelineTile(
                              isFirst: false, isLast: false, isPast: false),
                          MyTimelineTile(
                              isFirst: false, isLast: true, isPast: false),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Tennis Shoes",
                      style: TextStyle(
                          color: Colors.white60,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "NIKE",
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    )
                  ],
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0.0),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  child: Icon(
                    Icons.keyboard_arrow_up_sharp,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff232724),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xff232724),
                child: Column(
                  children: [
                    SecondaryTimeLine(
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      startChild: StartChild(
                        date: "13 Mar24",
                        time: '8:34am',
                      ),
                      endChild: EndChild(
                        deliveryStatus: "Out for delivery",
                        location: "Las  Vegas,NV",
                      ),
                    ),
                    SecondaryTimeLine(
                      isFirst: false,
                      isLast: false,
                      isPast: true,
                      startChild: StartChild(
                        date: "13 Mar24",
                        time: '9:56am',
                      ),
                      endChild: EndChild(
                        deliveryStatus: "Order sorted",
                        location: "Las  Vegas,NV",
                      ),
                    ),
                    SecondaryTimeLine(
                      isFirst: false,
                      isLast: false,
                      isPast: true,
                      startChild: StartChild(
                        date: "13 Mar24",
                        time: '10:34am',
                      ),
                      endChild: EndChild(
                        deliveryStatus: "Order arrived at warehouse",
                        location: "Las  Vegas,NV",
                      ),
                    ),
                    SecondaryTimeLine(
                      isFirst: false,
                      isLast: true,
                      isPast: false,
                      startChild: StartChild(
                        date: "13 Mar24",
                        time: '8:34am',
                      ),
                      endChild: EndChild(
                        deliveryStatus: "Order shipped",
                        location: "Las  Vegas,NV",
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
