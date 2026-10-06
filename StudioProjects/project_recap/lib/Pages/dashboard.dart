import 'package:flutter/material.dart';
class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:Text("Dashboard"),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return Container(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              height: size.height/5,
                              width: size.width/1.1,
                              decoration: BoxDecoration(
                                  color:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: Image.network("https://th.bing.com/th?id=OIF.b5dFQIwIiDfL%2bWiV6eLpEg&w=303&h=174&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
                                    fit:BoxFit.cover,
                                  )
                              )),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: size.height/5,
                            width: size.width/1.1,
                            color:Colors.black38,
                          ),
                          Positioned(bottom: 50, left: 30,
                              child: Container(
                                  width:size.width/2,
                                  child: Text("Luna twayana is my name. i am studying in PCPS",
                                    overflow: TextOverflow.ellipsis,maxLines: 2,
                                    style: TextStyle(color: Colors.white),
                                  ))),
                          Positioned(bottom: 20, left: 100,
                              child: Container(
                                width:size.width/2,
                                child: Text("September 30, 2026",
                                  overflow: TextOverflow.ellipsis,maxLines: 2,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          Positioned(bottom: 20, left: 30,
                              child: Container(
                                child: Icon(Icons.play_circle,color: Colors.pink, size: 30,),
                              ))

                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              height: size.height/5,
                              width: size.width/1.1,
                              decoration: BoxDecoration(
                                  color:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: Image.network("https://th.bing.com/th?id=OIF.b5dFQIwIiDfL%2bWiV6eLpEg&w=303&h=174&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
                                    fit:BoxFit.cover,
                                  )
                              )),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: size.height/5,
                            width: size.width/1.1,
                            color:Colors.black38,
                          ),
                          Positioned(bottom: 50, left: 30,
                              child: Container(
                                  width:size.width/2,
                                  child: Text("Luna twayana is my name. i am studying in PCPS",
                                    overflow: TextOverflow.ellipsis,maxLines: 2,
                                    style: TextStyle(color: Colors.white),
                                  ))),
                          Positioned(bottom: 20, left: 100,
                              child: Container(
                                width:size.width/2,
                                child: Text("September 30, 2026",
                                  overflow: TextOverflow.ellipsis,maxLines: 2,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          Positioned(bottom: 20, left: 30,
                              child: Container(
                                child: Icon(Icons.play_circle,color: Colors.pink, size: 30,),
                              ))

                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              height: size.height/5,
                              width: size.width/1.1,
                              decoration: BoxDecoration(
                                  color:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: Image.network("https://th.bing.com/th?id=OIF.b5dFQIwIiDfL%2bWiV6eLpEg&w=303&h=174&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
                                    fit:BoxFit.cover,
                                  )
                              )),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: size.height/5,
                            width: size.width/1.1,
                            color:Colors.black38,
                          ),
                          Positioned(bottom: 50, left: 30,
                              child: Container(
                                  width:size.width/2,
                                  child: Text("Luna twayana is my name. i am studying in PCPS",
                                    overflow: TextOverflow.ellipsis,maxLines: 2,
                                    style: TextStyle(color: Colors.white),
                                  ))),
                          Positioned(bottom: 20, left: 100,
                              child: Container(
                                width:size.width/2,
                                child: Text("September 30, 2026",
                                  overflow: TextOverflow.ellipsis,maxLines: 2,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          Positioned(bottom: 20, left: 30,
                              child: Container(
                                child: Icon(Icons.play_circle,color: Colors.pink, size: 30,),
                              ))

                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              height: size.height/5,
                              width: size.width/1.1,
                              decoration: BoxDecoration(
                                  color:Colors.grey,
                                  borderRadius: BorderRadius.circular(20)
                              ),

                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),

                                  child: Image.network("https://th.bing.com/th?id=OIF.b5dFQIwIiDfL%2bWiV6eLpEg&w=303&h=174&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3",
                                    fit:BoxFit.cover,
                                  )
                              )),
                          Container(
                            margin: EdgeInsets.all(10),
                            height: size.height/5,
                            width: size.width/1.1,
                            color:Colors.black38,
                          ),
                          Positioned(bottom: 50, left: 30,
                              child: Container(
                                  width:size.width/2,
                                  child: Text("Luna twayana is my name. i am studying in PCPS",
                                    overflow: TextOverflow.ellipsis,maxLines: 2,
                                    style: TextStyle(color: Colors.white),
                                  ))),
                          Positioned(bottom: 20, left: 100,
                              child: Container(
                                width:size.width/2,
                                child: Text("September 30, 2026",
                                  overflow: TextOverflow.ellipsis,maxLines: 2,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          Positioned(bottom: 20, left: 30,
                              child: Container(
                                child: Icon(Icons.play_circle,color: Colors.pink, size: 30,),
                              ))

                        ],
                      ),
                    ],
                  ),
                )


              ],
            ),
          );
        }
      ),
    );
  }

}

