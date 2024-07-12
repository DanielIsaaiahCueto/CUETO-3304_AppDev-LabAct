import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Personal Profile',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Personal Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Personal Info'),
                Tab(icon: Icon(Icons.school), text: 'Educational Background'),
                Tab(icon: Icon(Icons.build), text: 'Skills'),
                Tab(icon: Icon(Icons.lightbulb), text: 'Interests'),
                Tab(icon: Icon(Icons.contacts), text: 'Contact Details'),
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: TabBarView(
            children: [
              PersonalInfoTab(),
              EducationalBackgroundTab(),
              SkillsTab(),
              InterestsTab(),
              ContactDetailsTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalInfoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 75,
                backgroundImage: Image.asset('assets/my_image.png').image,
              ),
              const SizedBox(height: 23),
              Text('Daniel Isaaiah T. Cueto', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              Text('Age: 21', style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
              Text('Brief Bio: Im Daniel, and I have a lifelong passion for cooking, film and video.', style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
              Text('I enjoy creating engaging narratives through my work and strive to deliver high-quality results.', style: TextStyle(fontSize: 18), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

class EducationalBackgroundTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Center(child: Text('Bachelor of Science in Computer Science')),
                subtitle: Center(child: Text('Batangas State University Alangilan')),
              ),
              ListTile(
                title: Center(child: Text('IT in Mobile App and Web Development')),
                subtitle: Center(child: Text('STI Batangas')),
              ),
              ListTile(
                title: Center(child: Text('High School Diploma')),
                subtitle: Center(child: Text('Sta.Rita National High School')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SkillsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Center(child: Text('Technical Skills:')),
                subtitle: Center(child: Text('JavaScript, Database management, Analytics')),
              ),
              ListTile(
                title: Center(child: Text('Non-Technical Skills:')),
                subtitle: Center(child: Text('Emotional Intelligence, Time Management and Organization')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InterestsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Center(child: Text('Professional Interests:')),
                subtitle: Center(child: Text('Communicating data findings, Visualizing, Analyzing Data')),
              ),
              ListTile(
                title: Center(child: Text('Research Areas:')),
                subtitle: Center(child: Text('Data Manipulation, Data Science')),
              ),
              ListTile(
                title: Center(child:Text('Notable Projects:')),
                subtitle: Center(child: Text('Cooking Videos, Filming')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactDetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Center(child: Text('Email:')),
                subtitle: Center(child: Text('isaaiahdaniel@gmail.com')),
              ),
              ListTile(
                title: Center(child: Text('Phone Number:')),
                subtitle: Center(child: Text('09604724947')),
              ),
              ListTile(
                title: Center(child: Text('Social Media:')),
                subtitle: Center(child: Text('Instagram: @dnl_ihc, X: @Danielish_')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}