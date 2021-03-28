import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Your Address';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(appTitle),
        ),
        drawer: Drawer(),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var scrsize = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          height: scrsize.height,
          width: 370,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  decoration: InputDecoration(
                  hintText: 'First Name',
                  hintStyle: TextStyle(
                    color: Colors.white70
                  ),
                    suffixIcon: Icon(
                      Icons.person,
                      color: Colors.deepOrangeAccent,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrangeAccent,
                        width: 2.0,
                      )
                    )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.deepOrangeAccent,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2.0,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.deepOrangeAccent,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2.0,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle:  TextStyle(
                        color: Colors.white70
                    ),
                    suffixIcon: Icon(
                      Icons.phone_android_sharp,
                      color: Colors.deepOrangeAccent,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 2.0
                      ),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                IntlPhoneField(
                  decoration: InputDecoration(

                    hintText: 'Phone Number',
                    hintStyle:  TextStyle(
                        color: Colors.white70
                    ),
                    suffixIcon: Icon(
                      Icons.phone_android_sharp,
                      color: Colors.deepOrangeAccent,
                    ),

                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 2.0
                      ),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),

                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Permanent Address',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: Colors.deepOrangeAccent,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2.0,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Confirm permanent address',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: Colors.deepOrangeAccent,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2.0,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(

                  decoration: InputDecoration(
                      hintText: 'Pincode',
                      hintStyle: TextStyle(
                          color: Colors.white70
                      ),
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: Colors.deepOrangeAccent,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepOrangeAccent,
                            width: 2.0,
                          )
                      )
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(

                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        border: Border.all(
                          color: Colors.red[500],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    width: scrsize.width*0.75,

                    child: Center(
                      child: Text(
                        'SAVE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
