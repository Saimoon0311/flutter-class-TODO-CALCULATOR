import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

// class Home extends StatefulWidget {
//   const Home({ Key? key }) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//               child: Column(children: [
//         Container(
//           height: 200,
//           child: ListView(
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true,
//             children: [
//              Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),

//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//               Container(
//                margin: EdgeInsets.only(top: 10),
//                color: Colors.blue,
//                height: 200,
//              ),
//             ],
//           ),
//         )
//         ],),
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<dynamic> lst = [
//     "1",
//     2,
//     3,
//     4,
//     5,
//     6,
//     7,
//     8,
//     19,
//     10,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           Container(
//             height: 200,
//             width: 200,
//             color: Colors.red,
//             margin: EdgeInsets.only(top: 20),
//           ),
//           GridView.count(
//             physics: NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             crossAxisCount: 4,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20,
//             children: List.generate(lst.length, (index) {
//               return Container(
//                 color: Colors.green,
//                 child: Center(child: Text("${lst[index]}")),
//               );
//             }),
//           )
//         ],
//       ),
//     ));
//   }
// }

//  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//  CALCULATOR APP

// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var result = "";

//   Widget btn(var textt) {
//     return ElevatedButton(
//         onPressed: () {
//           setState(() {
//             result = result + textt;
//           });
//         },
//         child: Text(textt));
//   }

//   clearr() {
//     setState(() {
//       result = "";
//     });
//   }

//   output() {
//     Parser p = Parser();
//     Expression exp = p.parse(result);
//     ContextModel cm = ContextModel();
//     double eval = exp.evaluate(EvaluationType.REAL, cm);
//     setState(() {
//       result = eval.toString();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               result,
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 btn("1"),
//                 btn("2"),
//                 btn("3"),
//                 btn("4"),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 btn("5"),
//                 btn("6"),
//                 btn("7"),
//                 btn("8"),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 btn("9"),
//                 btn("0"),
//                 btn("-"),
//                 btn("*"),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 btn("/"),
//                 btn("+"),
//                 ElevatedButton(onPressed: output, child: Text("=")),
//                 ElevatedButton(onPressed: clearr, child: Text("Clear")),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

//  TODO APP

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var output = "";
  List<dynamic> lst = [1, 2, 3, 5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.red,
              margin: EdgeInsets.only(top: 20),
              child: ListTile(
                title: Text("${lst[index]}"),
                trailing: Container(
                  width: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                                   showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Edit Item"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            lst.replaceRange(index, index+1, {output});
                          });
                        },
                        child: Text("Edit ITEM"))
                  ],
                );
              });
        
                          },
                          child: Icon(Icons.edit)),
                           GestureDetector(
                          onTap: () {
                            setState(() {
                              lst.removeAt(index);
                            });
                          },
                          child: Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Add Item"),
                  content: TextField(
                    onChanged: (value) {
                      output = value;
                    },
                  ),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          setState(() {
                            lst.add(output);
                          });
                        },
                        child: Text("Add ITEM"))
                  ],
                );
              });
        },
        child: Text("Add"),
      ),
    );
  }
}
