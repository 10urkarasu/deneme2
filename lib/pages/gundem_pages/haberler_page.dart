import 'package:flutter/material.dart';
import 'package:habergundem/models/HaberlerModel.dart';
import 'package:habergundem/widgets/haber_widget.dart';
import 'package:http/http.dart' as http;
import 'package:habergundem/services/haberler_service.dart';

class HaberlerPage extends StatefulWidget {
  const HaberlerPage({Key? key}) : super(key: key);

  @override
  _HaberlerPageState createState() => _HaberlerPageState();
}

class _HaberlerPageState extends State<HaberlerPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<HaberlerModel>(
        future: HaberlerApi.getHaberlerData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return ListView.builder(
                itemCount:snapshot.data!.result!.length,
                itemBuilder: (context,index){
                  var haber=snapshot.data!.result;
                  return HaberWidget(widget:snapshot.data!,index: index,);
                }
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      )
    );
  }
}
