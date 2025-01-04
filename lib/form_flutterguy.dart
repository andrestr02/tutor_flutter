import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class form extends StatefulWidget {
  const form({super.key});
  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  bool ch1 = false;
  bool ch2 = false;

  int _val = 1; //for radio button

  String? selectVal; //for list box
  List<String> dropdownItem = ['One', 'Two', 'Three'];
  TextEditingController _namaController = TextEditingController();
  TextEditingController _noHpController = TextEditingController();

  @override
  void dispose() {
    _namaController.dispose();
    _noHpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Form",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text('Job Apply Form',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Field :- ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Commerce'),
              Checkbox(
                  value: ch1,
                  activeColor: Colors.blue,
                  onChanged: (newvalue) {
                    setState(() {
                      ch1 = newvalue!;
                    });
                  }),
              Text('Science'),
              Checkbox(
                  value: ch2,
                  activeColor: Colors.blue,
                  onChanged: (newvalue) {
                    setState(() {
                      ch2 = newvalue!;
                    });
                  }),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
            child: TextFormField(
                controller: _namaController,
                decoration: InputDecoration(
                    labelText: 'Masukkan Nama',
                    prefixIcon: Icon(Icons.drive_file_rename_outline_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: TextFormField(
                controller: _noHpController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Masukkan Nomor hp',
                    prefixIcon: Icon(CupertinoIcons.number_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Gender',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text('  Male'),
              Radio(
                  value: 1,
                  activeColor: Colors.blue,
                  groupValue: _val,
                  onChanged: (newval) {
                    setState(() {
                      _val = newval!;
                    });
                  }),
              Text('  Female'),
              Radio(
                  value: 2,
                  activeColor: Colors.blue,
                  groupValue: _val,
                  onChanged: (newval) {
                    setState(() {
                      _val = newval!;
                    });
                  })
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Text('Select'),
          DropdownButton(
            hint: Text('Year of Experience'),
            value: selectVal,
            onChanged: (String? newval) {
              setState(() {
                selectVal = newval;
              });
            },
            items: dropdownItem.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(
            height: 50,
          ),
          MaterialButton(
            onPressed: () {
              setState(() {
                ch1 = false;
                ch2 = false;
                selectVal = null;
                _namaController.clear();
                _noHpController.clear();
              });
            },
            child: Text(
              'Submit',
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.blue,
            height: 40,
            minWidth: 100,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
