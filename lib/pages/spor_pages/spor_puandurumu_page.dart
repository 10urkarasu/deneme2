import 'package:flutter/material.dart';
import 'package:habergundem/models/spor_models/PuanDurumuModel.dart';
import 'package:habergundem/services/spor_services/spor_puandurumu_service.dart';
import 'package:habergundem/widgets/puandurumu_widget.dart';

class PuanDurumu extends StatefulWidget {
  const PuanDurumu({Key? key}) : super(key: key);

  @override
  _PuanDurumuState createState() => _PuanDurumuState();
}

class _PuanDurumuState extends State<PuanDurumu> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder<PuanDurumuModel>(
          future: PuanDurumuApi.getPuanDurumuData(),
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
                    return PuanDurumuWidget(widget:snapshot.data!,index: index,);
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
