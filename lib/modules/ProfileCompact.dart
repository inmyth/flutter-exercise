import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/widget/AppDrawer.dart';
import 'MyCustomForm.dart';

class ProfileCompact extends StatelessWidget {

  static const String routeName = '/profile';


  @override
  Widget build(BuildContext context) {
    final appTitle = 'Profile Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: Content(),
        drawer: AppDrawer(),
      ),
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
          Experience(),
        Certification(),
        Education()],
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
                                  'David Rahman',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 34.0),
                                ),
                                Text(
                                  'Jakarta, Indonesia',
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
                                  child: Text("Project Manager (Construction, Infrastructure)",
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
              "SR. Project Coordinator",
              "Tripatra Engineering",
              "Oct 2012 - Present",
              "- Leading a major project of over 70M budget that aims to reduce population displacement which impacted more than 7000 people.\n- Successfully saved 6% of the planned budget through revising critical aspects in the scope and contracts."),
          new ExperienceItem(
              "Mechanical Completion Lead",
              "Senoro Gas Development Project",
              "Sep 2012 - Nov 2015",
              "- Completed business development/proposals for 7 projects which included (financial studies, feasibility studies, return of investments (ROI) and business models)."),
          new ExperienceItem(
              "Senior Instrumentation & Electrical Engineer",
              "PT. Meindo Elang Indah",
              "Apr 2012 - Sep 2012",
              ""),
          new ExperienceItem(
              "Senior Instrumentation & Electrical Engineer",
              "RP2 Rabigh II Petrochemical Project Saudi Arabia",
              "Apr 2012 - Sep 2012",
              "- Led a sub-project with over 4M budget and more than 20 people in the team."),
        ],
      ),
    );
  }
}



class ExperienceItem extends StatelessWidget {
  const ExperienceItem(this.title, this.org, this.duration, this.desc);

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
              "Certified Project Management Professional (PMP®), with more than 15 years of experience in oil and gas infrastructure projects.\n" +
              "Looking forward to apply my knowledge and experience in project management and learn new techniques.",
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

class Education extends StatelessWidget {
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
                  Text("Education",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, height: 2.0, fontSize: 24.0)),
                  GestureDetector(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      tooltip: 'Add new item',
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          new EducationItem(
            title: "Applied Physics",
            org: "Institut Teknologi Bandung",
            duration: "Aug 2001 - Aug 2005",
            desc: "GPA 3.5 / 4.0",
          )
        ],
      ),
    );
  }

}

class Certification extends StatelessWidget {
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
                  Text("Certifications & Qualifications",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, height: 2.0, fontSize: 24.0)),
                  GestureDetector(
                    child: IconButton(
                      icon: Icon(Icons.add),
                      tooltip: 'Add new item',
                    ),
                  ),
                ]
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          new Certificationitem(
            title: "Project Management Professional",
            org: "The Project Management Institute",
            issued: "Aug 2015",
          )
        ],
      ),
    );
  }

}

class Certificationitem extends StatelessWidget{
  const Certificationitem({this.title, this.org, this.issued});

  final String title;
  final String org;
  final String issued;

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
          Text(issued,
              style: TextStyle(
                  fontWeight: FontWeight.w300, height: 1.5, fontSize: 14.0)),
          GestureDetector(
            child: Text("link",

                style: TextStyle(
                    fontWeight: FontWeight.w300, height: 1.5, fontSize: 14.0,
                    color: Colors.lightBlue.withOpacity(1.0)
                )

            ),

            onTap: (){
              final snackBar = SnackBar(content: Text("Clicked the Container!"));
              Scaffold.of(context).showSnackBar(snackBar);
            },

          ),
          SizedBox(
            height: 5.0,
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  const EducationItem({this.title, this.org, this.duration, this.desc});

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

// Create a Form widget.
class Itemz extends StatefulWidget {
  @override
  ItemzState createState() {
    return ItemzState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class ItemzState extends State<Itemz> {
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
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'What do people call you?',
                    labelText: 'Name *',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    } else if (exp.hasMatch(value)) {
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
                        Scaffold.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
