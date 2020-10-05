import "package:flutter/material.dart";
import 'package:smartcode/shared/constant.dart';

class NewProfile extends StatefulWidget {
  @override
  _NewProfileState createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  List<Step> steps = [
    Step(
      title: const Text('Personal Information'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Profile Title'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'First name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Middle name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Gender'),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Birthday'),
            subtitle: const Text('February 20, 1980'),
            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Birth Place'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Nationality'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Blood Group'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Mother Tongue'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Religion'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Current Qualification'),
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Contact Details'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Parent address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Permanent address'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Parent Details'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Done'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text(
            'SCHOLAR',
            style: TextStyle(
              letterSpacing: 1.2,
              fontSize: 28.0,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Application');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.school,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('ADMISSIONS'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('HOME'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profilebar');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('PROFILE'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('SIGN OUT'),
                      ],
                    ),
                  ),
                ),
              ],
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
            ),
          ),
        ],
      ),
    );
  }
}
