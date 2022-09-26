import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

// class myapp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(
//               title: Text("Elon's musk resume"),
//               backgroundColor: Colors.black,
//             ),
//             body: Container(
//               // width: double.infinity,
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//               children: [itemtext("hii", Colors.blue)],
//                 ),
//               ),
//             )));
//   }
//   Widget itemtext(String item, Color color){
//     return Text(item,style: TextStyle(fontSize: 30, color: color),);
//   }
// }
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  int i = 0;
  WordPair? wordPair;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Elon's musk resume"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        // width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              wordPair.toString(),
              style: TextStyle(color: Colors.green, fontSize: 40),
            )),
            //Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQy1EREy6-pysO2QjdnbiZ-1aUWLdIjPWhuKZ49UvCu&s", fit: BoxFit.fill,),
            Image.asset("assets/beautiful-rain-forest-ang-ka-nature-trail-doi-inthanon-national-park-thailand-36703721.jpg")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            wordPair = WordPair.random();
          });
        },
        child: Icon(Icons.add),
      ),
    ));
    //   floatingActionButton: FloatingActionButton(onPressed: (){
    //     setState(() {
    //       i++;
    //     });
    //
    //   },
    //   child: Icon(Icons.add),),
    // );
  }

}
