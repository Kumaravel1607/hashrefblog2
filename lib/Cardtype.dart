import 'package:demoproject/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardType extends StatefulWidget {
  CardType({Key? key}) : super(key: key);

  @override
  State<CardType> createState() => _CardTypeState();
}

class _CardTypeState extends State<CardType> {
  List<String> image = [
    'https://cdn.pixabay.com/photo/2014/09/08/17/32/humming-bird-439364_960_720.jpg',
    'https://cdn.pixabay.com/photo/2018/05/03/22/34/lion-3372720_960_720.jpg',
    'https://cdn.pixabay.com/photo/2021/06/01/07/03/sparrow-6300790_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/10/20/10/58/elephant-2870777_960_720.jpg',
  ];
  List<String> title = ['Sparrow', 'Elephant', 'Humming Bird', 'Lion'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey,
        appBar: AppBar(
          backgroundColor: Blue,
          title: Center(
              child: Text(
            "Card Design",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        trailing: Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                        leading: Icon(Icons.album, size: 50),
                        title: Text('LEO'),
                        subtitle: Text('Badass'),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.green, width: 3),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  shadowColor: Colors.green[100],
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        trailing: Icon(
                          Icons.play_arrow,
                          size: 40,
                        ),
                        leading: Icon(Icons.album, size: 50),
                        title: Text('LEO'),
                        subtitle: Text('Badass'),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: ListTile(
                    trailing: Icon(
                      Icons.play_arrow,
                      size: 40,
                    ),
                    // leading: ClipRRect(
                    //   borderRadius: BorderRadius.circular(10),
                    //   child: Image(image: AssetImage('assets/images/leo.jpeg')),
                    // ),
                    title: Text('LEO'),
                    subtitle: Text('Badass'),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      color: Colors.blueAccent,
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.album, size: 70),
                            title: Text('Leo',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                            subtitle: Text('NAA READY',
                                style: TextStyle(
                                    color: black, fontWeight: FontWeight.bold)),
                          ),
                          ButtonBar(
                            children: <Widget>[
                              TextButton(
                                child: const Text('Edit',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {},
                              ),
                              TextButton(
                                child: const Text('Delete',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 4,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        // child: Image.asset(
                        //   'assets/images/His.jpg',
                        //   height: 250,
                        //   width: MediaQuery.of(context).size.width,
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                      ListTile(
                        title: const Text(
                          'LEO  U/A',
                          style: TextStyle(fontSize: 20),
                        ),
                        trailing: const Text(
                          '\$50',
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(
                            'Leo was released worldwide on 19 October 2023 in standard and IMAX formats to mixed reviews from the critics but positive reviews from audience.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Blue,
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 56)),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Color.fromARGB(255, 196, 165, 216),
                      elevation: 8.0,
                      margin: EdgeInsets.all(4.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Image.network(
                              image[index],
                              height:
                                  MediaQuery.of(context).size.width * (3 / 4),
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                          Text(
                            title[index],
                            style: TextStyle(
                              fontSize: 38.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
