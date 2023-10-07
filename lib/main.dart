import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }

}

class Homescreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _homestate();
  }

}

class _homestate extends State<Homescreen>{

  double total=0;
  int items=0;
  int a=0,b=0, c=0;

  List<int> amount =[51,30,43];

  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message),
          duration: Duration(seconds: 3) ,
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        elevation: 0,
        //toolbarHeight: 70,
        actions: [
          IconButton(onPressed: (){},
            icon: Icon(Icons.search,color: Colors.black,),
            style: IconButton.styleFrom(
                minimumSize: Size(40, 40)
            ),
          )
        ],
        backgroundColor: Colors.transparent,
      ),

      backgroundColor: Colors.white70,

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("My Bag",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 20,),

              Stack(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),

                  Positioned(
                    left: 0,
                    bottom: 0,

                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),


                  Positioned(
                    left: 105,
                    top:0,
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pullover",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black
                              ),),

                              Row(
                                children: [
                                  Text("Color :",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("Black   ",style: TextStyle(
                                      color: Colors.black
                                  ),),

                                  Text("Size: ",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("L   ",style: TextStyle(
                                      color: Colors.black
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                  ),
                  Positioned(
                      top:70,
                      left: 100,
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            a--;
                            if(a<0){
                              a=0 ;
                              total=total+amount[0] ;
                            }

                            total=total-amount[0];

                            setState(() {

                            });
                          },
                            child: Text("-",style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),

                          Text("$a"),

                          ElevatedButton(onPressed: (){
                            items++;
                            a++;
                            total=total+ amount[0] ;

                            setState(() {
                            });
                          },
                            child: Text("+",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),
                        ],
                      )
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: Icon(Icons.more_vert,color: Colors.grey,)
                  ),

                  Positioned(
                      right: 20,
                      bottom:20,
                      child: Text("51\$" ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),))

                ],
              ),

              Divider(),

              Stack(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),

                  Positioned(
                    left: 0,
                    bottom: 0,

                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),


                  Positioned(
                    left: 105,
                    top:0,
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("T-shirt",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black
                              ),),

                              Row(
                                children: [
                                  Text("Color :",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("Grey   ",style: TextStyle(
                                      color: Colors.black
                                  ),),

                                  Text("Size: ",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("L   ",style: TextStyle(
                                      color: Colors.black
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                  ),
                  Positioned(
                      top:70,
                      left: 100,
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){
                            b--;
                            if(b<0){
                              b=0 ;
                              items++;
                              total=total+amount[1] ;
                            }
                            items--;
                            total=total-amount[1 ];

                            setState(() {

                            });
                          },
                            child: Text("-",style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),

                          Text("$b"),
                          ElevatedButton(onPressed: (){
                            b++;
                            items++;
                            total=total+amount[1];

                            setState(() {

                            });
                          },
                            child: Text("+",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),
                        ],
                      )
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: Icon(Icons.more_vert, color: Colors.grey,)
                  ),

                  Positioned(
                      right: 20,
                      bottom:20,
                      child: Text("30\$" ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),))

                ],
              ),
              Divider(),

              Stack(
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),

                  Positioned(
                    left: 0,
                    bottom: 0,

                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage('https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=869&q=80'),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                  ),


                  Positioned(
                    left: 105,
                    top:0,
                    child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sport Dress",style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black
                              ),),

                              Row(
                                children: [
                                  Text("Color :",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("Black   ",style: TextStyle(
                                      color: Colors.black
                                  ),),

                                  Text("Size: ",style: TextStyle(
                                      color: Colors.grey
                                  ),),

                                  Text("M   ",style: TextStyle(
                                      color: Colors.black
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                  ),
                  Positioned(
                      top:65,
                      left: 100,
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){

                            c--;
                            if(c<0){
                              c=0 ;
                              items++;
                              total=total+amount[2] ;
                            }
                            items--;
                            total=total-amount[2] ;

                            setState(() {

                            });
                          },
                            child: Text("-",style: TextStyle(
                              fontSize: 30,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),

                          Text("$c"),
                          ElevatedButton(onPressed: (){
                            c++;
                            items++;
                            total=total+amount[2];

                            setState(() {

                            });
                          },
                            child: Text("+",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,


                            ),),
                            style: ElevatedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.zero,
                                elevation: 4,
                                backgroundColor: Colors.white
                            ),
                          ),
                        ],
                      )
                  ),
                  Positioned(
                      right: 15,
                      top: 15,
                      child: Icon(Icons.more_vert,color:Colors.grey)
                  ),

                  Positioned(
                      right: 20,
                      bottom:20,
                      child: Text("43\$" ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),))

                ],
              ),
              SizedBox(
                height: 80,
              ),
             Stack(
                children:[
                  Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),

                  height: 40,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: Text("Total Amount",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey
                          ),),
                        ),

                        Positioned(
                          right: 0,
                          child: Text("$total",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20

                          )
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
                ]
              ),

               SizedBox(height: 5,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                    MySnackBar("CHECKED OUT!!!!! Thank you for being with us!!", context);
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                    ),
                    child: Text("Check Out")),
              )




            ],
          ),
        ),
      ),

    );

  }

}



