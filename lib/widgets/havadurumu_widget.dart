import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habergundem/models/HavaDurumuModel.dart';

class HavaDurumuWidget extends StatefulWidget {
  const HavaDurumuWidget({Key? key,required this.widget}) : super(key: key);

  @override
  _HavaDurumuWidgetState createState() => _HavaDurumuWidgetState();
  final HavaDurumuModel widget;
}


class _HavaDurumuWidgetState extends State<HavaDurumuWidget> {
  int secim=0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: (MediaQuery.of(context).size.width),
          height: (MediaQuery.of(context).size.height),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue,Colors.blue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
          child: Row(
            children: [
              Container(
                height: (MediaQuery.of(context).size.height),
                width: (MediaQuery.of(context).size.width/4)*3,
                child: Column(
                  children: [
                    Text(widget.widget.result![secim].day.toString()),
                    Text(widget.widget.result![secim].date.toString()),
                    Text(widget.widget.result![secim].degree.toString()),
                    Text(widget.widget.result![secim].min.toString()),
                    Text(widget.widget.result![secim].max.toString()),
                    Text(widget.widget.result![secim].status.toString()),
                    Text(widget.widget.result![secim].description.toString()),
                  ],

                ),
              ),
              Container(
                  color: Colors.pink,
                  height: (MediaQuery.of(context).size.height),
                  width: (MediaQuery.of(context).size.width)/4,
                  child: ListView.builder(
                      itemCount: widget.widget.result!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return button(widget.widget.result![index].day!,index);
                      }
                  )
              )
            ],
          ),
        )
    );
  }
  Widget button(String gun,int index) {
    return OutlineButton(
      splashColor: Colors.white,
      borderSide: BorderSide(
          width: 1,
          color: Colors.white
      ),
      onPressed: () {
        setState(() {int secim=index;});
      },
      child: Text(gun,style: TextStyle(color: Colors.white)),
    );
  }
}
