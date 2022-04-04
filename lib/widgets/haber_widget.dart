import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habergundem/models/gundem_models/HaberlerModel.dart';

class HaberWidget extends StatefulWidget {
  const HaberWidget({Key? key,required this.widget,required this.index}) : super(key: key);

  @override
  _HaberWidgetState createState() => _HaberWidgetState();
  final HaberlerModel widget;
  final int index;
}

class _HaberWidgetState extends State<HaberWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width/5)*4,
      height: (MediaQuery.of(context).size.height/3),
      child: Card(
        child: Stack(
          children: [
            Center(
              child: Image.network(
                widget.widget.result![widget.index].image.toString(),
                width: (MediaQuery.of(context).size.width/5)*4,
                height: (MediaQuery.of(context).size.height/3),
              ),
            ),
            Center(
              child: Container(
                width: (MediaQuery.of(context).size.width/5)*4,
                height: (MediaQuery.of(context).size.height/3),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blueGrey.withOpacity(0.1),Colors.blueGrey.withOpacity(1)],
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                  )
                ),
              ),
            ),
            Positioned(
              child: Text(widget.widget.result![widget.index].name.toString(),
                  maxLines:2 ,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  )
              ),
              top: (MediaQuery.of(context).size.height/4),
              left: (MediaQuery.of(context).size.width/9),
              width: (MediaQuery.of(context).size.width/7)*5,
            ),
          ],
        ),
      ),
    );
  }
}
