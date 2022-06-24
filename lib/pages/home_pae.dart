import 'package:flutter/material.dart';
import 'package:my_task_figma/pages/grid_page.dart';
import 'package:my_task_figma/pages/search_page.dart';

class HomePage extends StatefulWidget {
  static const id = "/home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool checkbooksValue1 = false;
  bool checkbooksValue2 = false;
  bool checkbooksValue3 = false;
  bool checkbooksValue4 = false;
  bool value = false;
  int _index = 0;

  void bottomSheet(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      isScrollControlled: true,
      builder: (context) => SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height / 2.5 +
              MediaQuery.of(context).viewInsets.bottom,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 00.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Center(
                    child: Container(
                      width: 143,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[600]!,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Todo Title",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height / 56.25),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 105),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Todo title.....",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Task",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.height / 56.25),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height / 105),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Write anything in your mind ",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green.shade900,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height / 85),
                    ),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: (){
                  Navigator.pushNamed(context, GridPage.id);
                },
                icon: Image.asset("assets/images/img_7.png"),
            ),
             const SizedBox(
              width: 50,
            ),
            Container(
              margin: const EdgeInsets.only(right: 100),
              child: Text(
                "My Tasks",
                style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
             IconButton(
                 onPressed: () {
                   Navigator.pushNamed(context, SearchPage.id);
                 },
                 icon: const Icon(Icons.search,color: Colors.grey,size: 35,),
             )
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(right: 180),
            child: Column(
              children: [
                Text(
                  "Whats on your mind?",
                  style: TextStyle(
                      color: Colors.green.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                //padding: EdgeInsets.all(15),
                margin: const EdgeInsets.all(20),
                width: 400,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green.shade900,
                ),
                child: Container(
                  margin: const EdgeInsets.only(left: 10,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/images/img_5.png"),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              "Pay Emma",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10,),
                            child: Text(
                              "20 dollars of manga",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      Image.asset("assets/images/img_6.png"),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            //padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade900,
            ),
          ),
          Container(
            //padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade900,
            ),
          ),
          Container(
            //padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade900,
            ),
          ),
          Container(
            //padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade900,
            ),
          ),
          Container(
            //padding: EdgeInsets.all(15),
            margin: const EdgeInsets.all(20),
            width: 330,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green.shade900,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bottomSheet(context);
        },
        backgroundColor: Colors.green.shade600,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.nights_stay_outlined), label: "Night Light"),
        ],
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        selectedItemColor: Colors.green.shade900,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
