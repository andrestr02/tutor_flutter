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
                decoration: InputDecoration(
                    labelText: 'Masukkan Nama',
                    prefixIcon: Icon(Icons.drive_file_rename_outline_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: 'Masukkan Nomor hp',
                    prefixIcon: Icon(CupertinoIcons.number_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
          )
        ],
      ),
    );
  }
}
