import 'package:flutter/cupertino.dart';
import 'impact_update_object.dart';

class ImpactUpdateRepository extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      ImpactUpdateObject(
        companyTitle: "Zipline",
        update: "Zipline Completes 25,000 flights carrying blood and medicine in Rwanda.",
      ),
      Padding(padding: EdgeInsets.only(bottom: 8),),
      ImpactUpdateObject(
        companyTitle: "AgBiome",
        update: "Genective and AgBiome Announce Strategic Partnership.",
      ),
      Padding(padding: EdgeInsets.only(bottom: 8),),
      ImpactUpdateObject(
        companyTitle: "Jumo",
        update: "Goldman Sachs joins \$55m raise by fintech company, Jumo.",
      ),
      Padding(padding: EdgeInsets.only(bottom: 8),),
      ImpactUpdateObject(
        companyTitle: "senseFly",
        update: "senseFly working to make the \"Swiss Army Knife\" of drones.",
      ),
      Padding(padding: EdgeInsets.only(bottom: 8),),
      ImpactUpdateObject(
        companyTitle: "Apeel",
        update: "Apeel working on producing \"unexpirable\" fruits.",
      ),
      Padding(padding: EdgeInsets.only(bottom: 8),),
    ]);
  }
}
