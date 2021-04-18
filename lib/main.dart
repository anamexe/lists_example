import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lists/secondscrn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final appTitle = 'Your Billings';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(appTitle),
        ),
        drawer: Drawer(

        ),
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
  final _cname1=TextEditingController();
  final _cname2=TextEditingController();
  final _cname3=TextEditingController();
  final _cname4=TextEditingController();
  final _qty1=TextEditingController();
  final _qty2=TextEditingController();
  final _qty3=TextEditingController();
  final _qty4=TextEditingController();
  final _amt1=TextEditingController();
  final _amt2=TextEditingController();
  final _amt3=TextEditingController();
  final _amt4=TextEditingController();
  String fname;
  String lname;


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
                Row(
                  children: [
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 50,
                      child: Text('01'),
                    ),
                    Container(
                      width: 175.0,
                      child: TextFormField(
                        controller: _cname1,
                        decoration: InputDecoration(
                            hintText: 'Particulars',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),

                    Container(
                      width: 50.0,
                      child: TextFormField(
                        controller: _qty1,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Qty',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 75.0,
                      child: TextFormField(
                        controller: _amt1,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Amount',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 50,
                      child: Text('02'),
                    ),
                    Container(
                      width: 175.0,
                      child: TextFormField(
                        controller: _cname2,
                        decoration: InputDecoration(
                            hintText: 'Particulars',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),

                    Container(
                      width: 50.0,
                      child: TextFormField(
                        controller: _qty2,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Qty',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 75.0,
                      child: TextFormField(
                        controller: _amt2,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Amount',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 50,
                      child: Text('03'),
                    ),
                    Container(
                      width: 175.0,
                      child: TextFormField(
                        controller: _cname3,
                        decoration: InputDecoration(
                            hintText: 'Particulars',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),

                    Container(
                      width: 50.0,
                      child: TextFormField(
                        controller: _qty3,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Qty',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 75.0,
                      child: TextFormField(
                        controller: _amt3,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Amount',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 50,
                      child: Text('04'),
                    ),
                    Container(
                      width: 175.0,
                      child: TextFormField(
                        controller: _cname4,
                        decoration: InputDecoration(
                            hintText: 'Particulars',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),

                    Container(
                      width: 50.0,
                      child: TextFormField(
                        controller: _qty4,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Qty',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 05,
                    ),
                    Container(
                      width: 75.0,
                      child: TextFormField(
                        controller: _amt4,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            hintText: 'Amount',
                            hintStyle: TextStyle(
                                color: Colors.black12
                            ),

                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 2.0,
                                )
                            )
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),


                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                    goto(context);
                    },
                    child: Container(

                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.black,
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
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );


  }

  void goto(BuildContext context){
    String sendcmt1= _cname1.text;
    String sendcmt2= _cname2.text;
    String sendcmt3= _cname3.text;
    String sendcmt4= _cname4.text;
    String qty1=_qty1.text.toString();
    String qty2=_qty2.text.toString();
    String qty3=_qty3.text.toString();
    String qty4=_qty4.text.toString();
    String amt1=_amt1.text.toString();
    String amt2=_amt2.text.toString();
    String amt3=_amt3.text.toString();
    String amt4=_amt4.text.toString();
    Navigator.push(context, MaterialPageRoute(
        builder: (context)=> secondscrn(pname1: sendcmt1,
          pname2: sendcmt2,
          pname3: sendcmt3,
          pname4: sendcmt4,
          Q_ty1: qty1,
          Q_ty2: qty2,
          Q_ty3: qty3,
          Q_ty4: qty4,
          amt1: amt1,
          amt2: amt2,
          amt3: amt3,
          amt4: amt4,)
    ));
  }
}
