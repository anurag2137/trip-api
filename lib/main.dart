import 'package:flutter/material.dart';

void main()=>runApp(

   MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: ' Nunito'),
    home: HomePage(),
  )
);
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  _HomePageState createState()=>_HomePageState();

}
class _HomePageState extends State<HomePage>{
  late PageController _pageController;

  int totalPage=4;
  void _onScroll(){

  }
  @override
  void initState(){
    _pageController= PageController(
      initialPage:0 ,
    )..addListener(_onScroll);
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page:1,
              image: 'asset/images/one.jpg',
              title:'YOSEMITE NATIONAL PARK',
              description:'Yosemite national park is in california Sierra navada mountain.It is famed for its giant sequoia tree,and for tunnel view ,the iconic vista of towering Bridalveli fall and the granite clifts of EI capitan and half Dome.'

          ),
          makePage(
            page:2,
              image: 'asset/images/two.jpg',
                  title:'GOLDEN GATE BRIDGE',
              description:'Acclaimed as one of the world most beautiful bridges, there are many different elements to the Golden Gate Bridge that make it unique. With its tremendous towers, sweeping cables, and great span, the Bridge is a sensory beauty and engineering wonder featuring color, sound and light.The Golden Gate Bridge connects San Francisco to Marin County..'

          ),
          makePage(
            page:3,
              image: 'asset/images/three.jpg',
                  title:'SEDONA',
              description:'Sedona main attraction is its array of red sandstone formations. The formations appear to glow in brilliant orange and red when illuminated by the rising or setting sun. The red rocks form a popular backdrop for many activities, ranging from spiritual pursuits to the hundreds of hiking and mountain biking trails.'
          ),
          makePage(
            page:4,
              image: 'asset/images/four.jpg',
            title: 'SAVANNAH',
            description:'Savannah Facts. As the oldest city in the state of Georgia, Savannah has a long and colorful history chock-full of interesting characters and beautiful locales. From manicured parks and horse-drawn carriages to ornate antebellum architecture, it is no wonder Savannah is one of the most visited cities in the South.'
          ),
        ],
      ),
    );
  }
Widget makePage({image,title,description,page}) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover



        )
    ),
    child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: const [0.3, 0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ]
          )
      ),
      child:  Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline:TextBaseline.alphabetic ,
                children: <Widget>[
                  Text(page.toString(), style: TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),),
                  Text('/'+ totalPage.toString(),style: TextStyle(color: Colors.white,fontSize: 15),)

                ],
              ),
              Expanded(
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold ),),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.yellow,size: 15,),
                          ),
                          Container(
                            margin:EdgeInsets.only(right: 3),
                            child: Icon(Icons.star,color: Colors.grey,size: 15,),
                          ),
                          Text('4.0',style: TextStyle(color: Colors.white70),),
                          Text('(2300)',style: TextStyle(color: Colors.white70,fontSize: 12),)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:50),
                        child: Text(description,style: TextStyle(color: Colors.white10.withOpacity(.7),height: 1.9,fontSize: 15),),
                      ),
                      SizedBox(height: 20,),
                      Text('READ MORE',style: TextStyle(color: Colors.white),),
                      SizedBox (height: 30,),
                        ],
                      )
                     )
                    ],
                  ),
              ),
        ),
      );
}

}





