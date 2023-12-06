import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task14/provider.dart';
import 'package:task14/userdetails.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    final placeholder = Provider.of<personprovider>(context, listen: false);
    placeholder.getuser();
    return Scaffold(
        appBar: AppBar(
          title: Text("users"),
          backgroundColor: Colors.blue,
        ),
        body: Consumer<personprovider>(
          builder: (context, userdetails, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: placeholder.userlist.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                              radius: 18, child: Icon(Icons.person)),
                          title:
                              Text(userdetails.userlist[index].id.toString()),
                          subtitle: Row(
                            children: [
                              Column(children: [
                                Text(userdetails.userlist[index].name
                                    .toString()),
                                Text(userdetails.userlist[index].email
                                    .toString())
                              ]),
                            ],
                          ),
                          shape: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3))),
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return persondetails(userdata:userdetails.userlist[index]);
                            }));
                          },
                        );
                      }),
                ),
              ],
            );
          },
        ));
  }
}
