import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/AppDrawer.dart';

class ProfileItems extends StatelessWidget {

  static const String routeName = '/profile_old';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile (Old)"),
      ),
      body: Content(),
      drawer: AppDrawer(),
    );
  }
}

class Content extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
      child: ListView(
        children: [
          Header(),
          ShowcaseCarousel(),
          About(),
          Experience()],
      ),
    );
  }
}

class Header extends StatelessWidget {
  final double circleRadius = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Stack(children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1559959656-9bcf78455c5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        top: circleRadius / 2.0,
                      ),

                      ///here we create space for the circle avatar to get ut of the box
                      child: Container(
                        height: 250.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                        width: double.infinity,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: circleRadius / 2,
                                ),
                                Text(
                                  'Martin B Utama',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 34.0),
                                ),
                                Text(
                                  'Bandung, West Java',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      color: Colors.lightBlueAccent),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 32.0),
                                  child: Text("Welder, Construction",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          height: 2.0,
                                          fontSize: 16.0)),
                                )
                              ],
                            )),
                      ),
                    ),

                    ///Image Avatar
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8.0,
                            offset: Offset(0.0, 5.0),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Center(
                          child: Container(
                            child: Icon(Icons.person),

                            /// replace your image with the Icon
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 20.0,
            ),
          ],
        ));
  }
}

var header = Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlueAccent, Colors.indigoAccent])),
    child: Container(
      width: double.infinity,
      height: 350.0,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://img.favpng.com/6/17/15/rubber-duck-cartoon-avatar-png-favpng-kKz7Lgv3zu0m8WdGXRWfg45hN.jpg",
              ),
              radius: 50.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Alice James",
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: 5.0,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 22.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Posts",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "5200",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.pinkAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Followers",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "28.5K",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.pinkAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Follow",
                            style: TextStyle(
                              color: Colors.redAccent,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            "1300",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.pinkAccent,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));

final List<String> imgList = [
  'https://images.unsplash.com/photo-1507335563142-a814078ce38c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=701&q=80',
  'https://images.unsplash.com/photo-1589939705384-5185137a7f0f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'https://images.unsplash.com/photo-1545186070-de624ed19875?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1563166423-482a8c14b2d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
  'https://images.unsplash.com/photo-1530639834082-05bafb67fbbe?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
];

List<Widget> buildSliders(BuildContext context, List<String> imgList) {
  return imgList
      .map((item) => GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_) {
        return ShowcaseImageScreen(item);
      }));
    },

    child: Container(
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(item, fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(0, 0, 0, 0)
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'No. ${imgList.indexOf(item)} image',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    ),
  ))
      .toList();
}

class ShowcaseCarousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
              ),
              items: buildSliders(context, imgList),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ));
  }
}


class ShowcaseImageScreen extends StatelessWidget {
  ShowcaseImageScreen(this.url);

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              url,
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Experience",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, height: 2.0, fontSize: 24.0)),
                  GestureDetector(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return MyCustomForm();
                        }));
                      },
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          new ExperienceItem(
              "Volunteer",
              "Covid Watch",
              "April 2020 - Present, 6mos",
              "Covid Watch is a volunteer group starting in Stanford U. to develop decentralized Covid-19 contact-tracing application. The goal is to warn users of past contact with infected persons, to protect the privacy of the infected when reporting their symptoms, and to prevent misuse of tracing data I'm currently tasked to help build the backend software."),
          new ExperienceItem(
              "Software Engineer",
              "Bebit, Inc",
              "Dec 2019 - March 2020, 4mos",
              '''A B2B software company providing user engagement, insight visualization and user behavior through AI. 
My duties are :
- to improve the code base with better maintainability and performance
- to train the engineers in Scala and functional programming
           ''')
        ],
      ),
    );
  }
}



class ExperienceItem extends StatelessWidget {
  ExperienceItem(this.title, this.org, this.duration, this.desc);

  final String title;
  final String org;
  final String duration;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.w600, height: 1.5, fontSize: 14.0)),
          Text(org,
              style: TextStyle(
                  fontWeight: FontWeight.w600, height: 1.5, fontSize: 14.0)),
          Text(duration,
              style: TextStyle(
                  fontWeight: FontWeight.w300, height: 1.5, fontSize: 14.0)),
          SizedBox(
            height: 5.0,
          ),
          Text(desc,
              style: TextStyle(
                  fontWeight: FontWeight.w300, height: 1.5, fontSize: 14.0)),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description",
              style: TextStyle(
                  fontWeight: FontWeight.bold, height: 2.0, fontSize: 24.0)),
          SizedBox(
            height: 10.0,
          ),
          Text(
              "I am a Scala/Java software engineer with passion in functional programming and multi-threaded system. Throughout my career I have developed various applications from Android, database, back end, front end, and cloud. I'm an eager learner and always look for an opportunity to grow.",
              style: TextStyle(
                  fontWeight: FontWeight.w300, height: 1.5, fontSize: 14.0)),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}



class MyCustomForm extends StatefulWidget {

  @override
  _MyCustomFormState createState() => _MyCustomFormState();

}

// Create a corresponding State class.
// This class holds data related to the form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  final RegExp exp = new RegExp(r"([123]+)");

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  minLines: 3,//Normal textInputField will be displayed
                  maxLines: 5,// when user presses enter it will adapt to it
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Describe your work experience',
                    labelText: 'Experience *',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    else if (exp.hasMatch(value)){
                      return 'Input has to start with 123';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false
                      // otherwise.
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a Snackbar.
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        )
    );

  }
}