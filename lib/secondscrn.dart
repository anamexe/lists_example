import 'package:flutter/material.dart';
import 'dart:io';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:open_file/open_file.dart' as open_file;

class secondscrn extends StatelessWidget {
  String pname1;
  String pname2;
  String pname3;
  String pname4;
  String Q_ty1;
  String Q_ty2;
  String Q_ty3;
  String Q_ty4;
  String amt1;
  String amt2;
  String amt3;
  String amt4;

  secondscrn({Key key,
    @required this.pname1,
    @required this.pname2,
    @required this.pname3,
    @required this.pname4,
    @required this.Q_ty1,
    @required this.Q_ty2,
    @required this.Q_ty3,
    @required this.Q_ty4,
    @required this.amt1,
    @required this.amt2,
    @required this.amt3,
    @required this.amt4
    }):super(key: key);

  String amount1;
  String amount2;
  String amount3;
  String amount4;
  String total;

  @override
  Widget build(BuildContext context) {
    var a=int.parse(amt1);
    var b=int.parse(amt2);
    var c=int.parse(amt3);
    var d=int.parse(amt4);
    var intqty1=int.parse(Q_ty1);
    var intqty2=int.parse(Q_ty2);
    var intqty3=int.parse(Q_ty3);
    var intqt4=int.parse(Q_ty4);
    var intamt1=int.parse(amt1);
    var intamt2=int.parse(amt2);
    var intamt3=int.parse(amt3);
    var intamt4=int.parse(amt4);

    amount1 =(intqty1*intamt1).toString();
    amount2 =(intqty2*intamt2).toString();
    amount3 =(intqty3*intamt3).toString();
    amount4 =(intqt4*intamt4).toString();
    var rate1=int.parse(amount1);
    var rate2=int.parse(amount2);
    var rate3=int.parse(amount3);
    var rate4=int.parse(amount4);
    int t=rate1+rate2+rate3+rate4;
    total=t.toString();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Flutter DataTable Example'),
        ),
        body: ListView(children: <Widget>[
          Center(
              child: Text(
                'NOOR ENTERPRISES',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          DataTable(
            columnSpacing: 10,
            columns: [

              DataColumn(label: Text(
                  'Sr.No.',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Particular',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Quantity',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
              DataColumn(label: Text(
                  'Amt',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
              )),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('01')),
                DataCell(Text(pname1)),
                DataCell(Text(Q_ty1+"kg")),
                DataCell(Text(amount1)),
              ]),
              DataRow(cells: [
                DataCell(Text('02')),
                DataCell(Text(pname2)),
                DataCell(Text(Q_ty2+'kg')),
                DataCell(Text(amount2)),
              ]),
              DataRow(cells: [
                DataCell(Text('03')),
                DataCell(Text(pname3)),
                DataCell(Text(Q_ty3+"kg")),
                DataCell(Text(amount3)),
              ]),
              DataRow(cells: [
                DataCell(Text('04')),
                DataCell(Text(pname4)),
                DataCell(Text(Q_ty4+"kg")),
                DataCell(Text(amount4)),

              ]),
              DataRow(cells: [
                DataCell(Text('Total')),
                DataCell(Text('')),
                DataCell(Text('')),
                DataCell(Text(total)),

              ]),

            ],
          ),
          SizedBox(
            height: 50,
          ),

          Container(
            color: Colors.black12,
            height: 100,
            width: 100,
            child: TextButton(
              child: const Text('Generate PDF'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,

              ),
              onPressed: generateInvoice,
            ),
          )
        ]
        )

    );
  }
  Future<void> generateInvoice() async {
    //Create a PDF document.
    final PdfDocument document = PdfDocument();
    //Add page to the PDF
    final PdfPage page = document.pages.add();
    //Create a PDF page template and add header content.
    final PdfPageTemplateElement headerTemplate =
    PdfPageTemplateElement(const Rect.fromLTWH(0, 0, 515, 50));
    //Draw text in the header.
    headerTemplate.graphics.drawString(
        'NOOT ENTERPRISES', PdfStandardFont(PdfFontFamily.helvetica, 12,style: PdfFontStyle.bold),
        bounds: const Rect.fromLTWH(0, 15, 200, 20));
    //Add the header element to the document.
    document.template.top = headerTemplate;
    // Create a PDF grid class to add tables.
    final PdfGrid grid = PdfGrid();
// Specify the grid column count.
    grid.columns.add(count: 4);
// Add a grid header row.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    headerRow.cells[0].value = 'Sr.No.';
    headerRow.cells[1].value = 'Particulars';
    headerRow.cells[2].value = 'Quantity';
    headerRow.cells[3].value = 'Amount';
// Set header font.
    headerRow.style.font =
        PdfStandardFont(PdfFontFamily.helvetica, 10, style: PdfFontStyle.bold);
// Add rows to the grid.
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = '01';
    row.cells[1].value = pname1;
    row.cells[2].value = Q_ty1+'kg';
    row.cells[3].value = amount1;

// Add next row.
    row = grid.rows.add();
    row.cells[0].value = '02';
    row.cells[1].value = pname2;
    row.cells[2].value = Q_ty2+'kg';
    row.cells[3].value = amount2;

// Add next row.
    row = grid.rows.add();
    row.cells[0].value = '03';
    row.cells[1].value = pname3;
    row.cells[2].value = Q_ty3+'kg';
    row.cells[3].value = amount3;
    // Add next row.
    row = grid.rows.add();
    row.cells[0].value = '04';
    row.cells[1].value = pname4;
    row.cells[2].value = Q_ty4+'kg';
    row.cells[3].value = amount4;
    // Add next row.
    row = grid.rows.add();
    row.cells[0].value = 'Total';
    row.cells[1].value ='----';
    row.cells[2].value = '----';
    row.cells[3].value = total;


    // Set grid format.
    grid.style.cellPadding = PdfPaddings(left: 5, top: 5);
// Draw table in the PDF page.
    grid.draw(
        page: page,
        bounds: Rect.fromLTWH(
            0, 0, 400, page.getClientSize().height));

    //Save and launch the document
    final List<int> bytes = document.save();
    //Dispose the document.
    document.dispose();
    //Get the storage folder location using path_provider package.
    final Directory directory =
    await path_provider.getApplicationDocumentsDirectory();
    final String path = directory.path;
    final File file = File('$path/f.pdf');
    await file.writeAsBytes(bytes);
    //Launch the file (used open_file package)
    await open_file.OpenFile.open('$path/f.pdf');
  }
}
