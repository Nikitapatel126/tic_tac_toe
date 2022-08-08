import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: one(),
  ));
}
class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  int t = 0,o = 0,x= 0;
  String won = "", turn = "O";
  List list =List.filled(9, "");

  win()
  {
    if (   list[0] == "O" && list[1] == "O" && list[2] == "O" ||
        list[0] == "O" && list[4] == "O" && list[8] == "O" ||
        list[0] == "O" && list[3] == "O" && list[6] == "O" ||
        list[1] == "O" && list[4] == "O" && list[7] == "O" ||
        list[2] == "O" && list[5] == "O" && list[8] == "O" ||
        list[6] == "O" && list[7] == "O" && list[8] == "O" ||
        list[3] == "O" && list[4] == "O" && list[5] == "O" ||
        list[2] == "O" && list[4] == "O" && list[6] == "O" )
    {
      won = "O";
    }
    else if (list[0] == "X" && list[1] == "X" && list[2] == "X" ||
        list[0] == "X" && list[4] == "X" && list[8] == "X" ||
        list[0] == "X" && list[4] == "X" && list[7] == "X" ||
        list[2] == "X" && list[5] == "X" && list[8] == "X" ||
        list[6] == "X" && list[7] == "X" && list[8] == "X" ||
        list[3] == "X" && list[4] == "X" && list[5] == "X" ||
        list[2] == "X" && list[4] == "X" && list[6] == "X" )
    {
      won = "X";
    };

  }

  changeval(int pos)
  {
    setState(() {
      if (list[pos] == "") {
        if (t % 2 == 0) {
          list[pos] = "O";
          o++;
          turn = "X";
        }
        else {
          list[pos] = "X";
          x++;
          turn = "O";
        }
        t++;
        win();
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(flex:1,child: Container(
              color: Colors.blueGrey,
           child: Text("TIC__TAC__TOE__",style: TextStyle(color: Colors.cyan,fontSize: 25),),
            alignment: Alignment.centerLeft,
          ),),
         Expanded(flex:2,child: Container(
             color: Colors.cyan,
            child: Row(
              children: [
                Expanded(flex:3, child: InkWell(onTap: () {changeval(0);},child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(color: Colors.cyan,width: 5)
                    ),
                  margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[0]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                  ),
                  ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(1);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[1]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(2);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,

                  child: Text("${list[2]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
              ],
            ),
          ),
         ),
          Expanded(flex:2,child: Container(
            color: Colors.cyan,
            child: Row(
              children: [
                Expanded(flex:3, child: InkWell(onTap: () {changeval(3);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[3]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(4);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[4]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(5);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[5]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
              ],
            ),
          ),
          ),
          Expanded(flex:2,child: Container(
            color: Colors.cyan,
            child: Row(
              children: [
                Expanded(flex:3, child: InkWell(onTap: () {changeval(6);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[6]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(7);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[7]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
                Expanded(flex:3, child: InkWell(onTap: () {changeval(8);},child: Container(
                  height: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.cyan,width: 5)
                    ),
                    margin:EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Text("${list[8]}",style: TextStyle(color: Colors.black,fontSize: 40),),
                ),
                ),
                ),
              ],
            ),
          ),
          ),

          Expanded(flex:1,child: Container(
            color: Colors.cyan,
            child: Row(
              children: [
                Expanded(flex:3,child: Container(
                    height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.cyan,width: 5),
                  ),
                  alignment: Alignment.center,
                  child: Text("X:$x",style: TextStyle(fontSize: 20),),
                  margin:EdgeInsets.all(10)
                ),
                ),
                Expanded(flex:3,child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.cyan,width: 5)
                  ),
                  alignment: Alignment.center,
                  child: Text("$turn turn",style: TextStyle(fontSize: 20),),
                  margin: EdgeInsets.all(10),
                ),
                ),
                Expanded(flex:3,child: Container(
                  height: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      border: Border.all(color: Colors.cyan,width: 5)
                  ),
                  alignment: Alignment.center,
                  child: Text("O:$o",style: TextStyle(fontSize: 20),),
                  margin: EdgeInsets.all(10),
                ),
                ),
              ],
            ),
          ),
          ),
          Expanded(flex:1,child: Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.cyan,width: 15)
            ),
            alignment: Alignment.center,
            child: Text(" $won Is Winner",style: TextStyle(fontSize: 25),),
          ),
          ),


        ],
      ),
    );
  }
}
