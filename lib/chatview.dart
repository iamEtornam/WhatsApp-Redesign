import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 100,
          color: Colors.transparent,
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Row(
              children: <Widget>[
                Align(
                  //alignment: Alignment(0.2, 0.2),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Stack(
                      children: <Widget>[
                        Align(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 4),
                              borderRadius: BorderRadius.circular(45),
                              color: Colors.green,
                            ),
                            // radius: 50,
                            // backgroundColor: Colors.limeAccent,
                          ),
                        ),
                        Positioned(
                          right: 5,
                          top: 0,
                          child: Container(
                            child: Text('3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 9,
                              color: Colors.white,
                            ),),
                            margin: EdgeInsets.all(1),
                            height:20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color:Colors.white, width: 4),
                              borderRadius: BorderRadius.circular(45),
                              color: Colors.green
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //Name and notification icon part
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(28.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //NAME
                            Text('Cynthia Peter',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            ),
                            ),
                            
                            //NOTIFICATION ICON ON THE RIGHT
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                               color: Colors.green,
                              ),
                            )
                          ],
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Text('Hey Reg, Howdy, you good?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),),
                            SizedBox(
                              width: 65,
                            ),
                            Text('Just Now',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black45,
                            ),)
                          ],
                        )
                      ],
                      
                    )
                  ),
                ),
                Divider(
                  color: Colors.red,
                  //indent: 5.0,
                  height: 10.0,
                ),
              ],
            ),
    );
  }
}