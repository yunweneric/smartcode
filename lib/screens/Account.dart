import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer8.dart';
import 'package:smartcode/shared/constant.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

bool _showPassword = false;

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer8(),
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
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
          ),
          // height: MediaQuery.of(context).size.height,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 80,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: grayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.mail,
                        size: 30.0,
                        color: Color(0xFF00C0C5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 0.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: grayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Username",
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 30.0,
                        color: Color(0xFF00C0C5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 0.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: grayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "New Password",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(
                          // Icons.visibility,
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 30,
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30.0,
                        color: Color(0xFF00C0C5),
                      ),

                      // suffixIcon: Icon()
                    ),
                    obscureText: !_showPassword,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 0.0,
                  ),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: grayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Current Password",
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        child: Icon(
                          // Icons.visibility,
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 30,
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30.0,
                        color: Color(0xFF00C0C5),
                      ),

                      // suffixIcon: Icon()
                    ),
                    obscureText: !_showPassword,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Account');
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
