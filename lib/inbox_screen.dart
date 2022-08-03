import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Inbox",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_location,
              color: Colors.purple,
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              margin: const EdgeInsets.all(1.0),
              padding: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.transparent),
                color: Colors.purple,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Image(
                  image: AssetImage(
                    'images/profile2.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(7),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "This Week",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      '(2 assigned)',
                      style: TextStyle(color: Colors.purple),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0; i < 5; i++)
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Card(
                      color: i.isEven ? Colors.red : Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      margin: const EdgeInsets.only(left: 5),
                      child: Card(
                        margin: const EdgeInsets.only(left: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        shadowColor: Colors.black,
                        elevation: 10,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    'Service Work',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    width: 160,
                                  ),
                                  Text(
                                    '#2314351',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'DTGM Ligting',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.location_pin,
                                    //color: i.isEven ? Colors.red : Colors.purple,
                                    color: Colors.red,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('36/80 fencing edge'),
                                ],
                              ),
                              const Divider(
                                thickness: 1,
                              ),
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '27 May, 2021 | 07:00 PM',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 60.0,
        width: 60.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.purple,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
