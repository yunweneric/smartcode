import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer.dart';
import 'package:smartcode/shared/constant.dart';
import 'package:flutter/services.dart';
import 'package:file_picker/file_picker.dart';


import '../shared/constant.dart';

class NewDocuments extends StatefulWidget {
  @override
  _NewDocumentsState createState() => _NewDocumentsState();
}

class _NewDocumentsState extends State<NewDocuments> {

  String fileName;
  String path;
  Map<String, String> paths;
  List<String> extensions;
  bool isLoadingPath = false;
  bool isMultiPick = false;
  bool fileType;

  void _openFileExplorer() async {
    setState(() => isLoadingPath = true);
    try {
      if (isMultiPick) {
        path = null;
        paths = await FilePicker.getMultiFilePath(type: fileType? fileType: FileType.any, allowedExtensions: extensions);
      }
      else {
        path = await FilePicker.getFilePath(type: fileType? fileType: FileType.any, allowedExtensions: extensions);
        paths = null;
      }
    }
    on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
    if (!mounted) return;
    setState(() {
      isLoadingPath = false;
      fileName = path != null ? path.split('/').last : paths != null
          ? paths.keys.toString() : '...';
    });
  }


  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor: primaryColor,
          // title: Text('$_formateddate'),
          title: Text('New Document'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  'Home/New Document',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                child: TextField(
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
                    hintText: "Document Title",
                    prefixIcon: Icon(
                      Icons.work,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primaryColor,
                ),
                width: 350,
                child: Center(
                  child: DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Center(
                            child: Text("Our Related Academic Program",
                              style: TextStyle(
                                color: Colors.white,
                              ),),
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text(" Software Engineering"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(" Food and Nutrition"), value: 3),
                        DropdownMenuItem(
                            child: Text(" Logistics and Transport"), value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),

          new Center(
              child: new Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: new SingleChildScrollView(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: new DropdownButton(
                            hint: new Text('Select file type'),
                            value: fileType,
                            items: <DropdownMenuItem>[
                              new DropdownMenuItem(
                                child: new Text('Audio'),
                                value: FileType.audio,
                              ),
                              new DropdownMenuItem(
                                child: new Text('Image'),
                                value: FileType.image,
                              ),
                              new DropdownMenuItem(
                                child: new Text('Video'),
                                value: FileType.video,
                              ),
                              new DropdownMenuItem(
                                child: new Text('Any'),
                                value: FileType.any,
                              ),
                            ],
                            onChanged: (value) => setState(() {
                              fileType = value;
                            })
                        ),
                      ),
                      new ConstrainedBox(
                        constraints: BoxConstraints.tightFor(width: 200.0),
                        child: new SwitchListTile.adaptive(
                          title: new Text('Pick multiple files', textAlign: TextAlign.right),
                          onChanged: (bool value) => setState(() => isMultiPick = value),
                          value: isMultiPick,
                        ),
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 50.0, bottom: 20.0),
                        child: new RaisedButton(
                          onPressed: () => _openFileExplorer(),
                          child: new Text("Open file picker"),
                        ),
                      ),
                      new Builder(
                        builder: (BuildContext context) => isLoadingPath ? Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: const CircularProgressIndicator()
                        )
                            : path != null || paths != null ? new Container(
                          padding: const EdgeInsets.only(bottom: 30.0),
                          height: MediaQuery.of(context).size.height * 0.50,
                          child: new Scrollbar(
                              child: new ListView.separated(
                                itemCount: paths != null && paths.isNotEmpty ? paths.length : 1,
                                itemBuilder: (BuildContext context, int index) {
                                  final bool isMultiPath = paths != null && paths.isNotEmpty;
                                  final int fileNo = index + 1;
                                  final String name = 'File $fileNo : ' +
                                      (isMultiPath ? paths.keys.toList()[index] : fileName ?? '...');
                                  final filePath = isMultiPath
                                      ? paths.values.toList()[index].toString() : path;
                                  return new ListTile(title: new Text(name,),
                                    subtitle: new Text(filePath),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) => new Divider(),
                              )),
                        )
                            : new Container(),
                      ),
                    ],
                  ),
                ),
              )),




              SizedBox(

                height: 20,
              ),

              Container(
                decoration: BoxDecoration(
                    color: primaryColor, borderRadius: BorderRadius.circular(10)),
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        drawer: MainDrawer(),
      ),
    );
  }
}
