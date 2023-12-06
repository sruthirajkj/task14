import 'package:flutter/material.dart';

import 'modelclass.dart';

class persondetails extends StatefulWidget {
//  const persondetails({Key? key}) : super(key: key);
  const persondetails({super.key, required this.userdata});
  final placeholder userdata;

  @override
  State<persondetails> createState() => _persondetailsState();
}

class _persondetailsState extends State<persondetails> {
  @override
  Widget build(BuildContext context) {
    var userdata;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.userdata.name!.toString(),
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Colors.blue),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Center(
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image(
                  image: NetworkImage(
                      "https://cdn1.iconfinder.com/data/icons/bokbokstars-121-classic-stock-icons-1/512/person-man.png")),
            ),
          ),
          Text(
            widget.userdata.name!.toString(),
            style: TextStyle(fontSize: 23),
          ),
          Row(
            children: [
              Text("Username:", style: TextStyle(fontSize: 20)),
              Text(widget.userdata.name!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text("Email:", style: TextStyle(fontSize: 20)),
              Text(widget.userdata.name!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text("Address:", style: TextStyle(fontSize: 20)),
              Text(widget.userdata.address!.street!,
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.userdata.address!.suite!,
                    style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(widget.userdata.address!.city!, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Text(widget.userdata.address!.zipcode!, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Row(
            children: [
              Text("Phone:", style: TextStyle(fontSize: 20)),
              Text(widget.userdata.phone!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text("Website:", style: TextStyle(fontSize: 20)),
              Text(widget.userdata.website!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Text(
            "Company details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text(widget.userdata.company!.name!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text(widget.userdata.company!.catchPhrase!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
          Row(
            children: [
              Text(widget.userdata.company!.bs!.toString(),
                  style: TextStyle(fontSize: 20)),
            ],
          ),
        ]),
      ),
    );
  }
}
