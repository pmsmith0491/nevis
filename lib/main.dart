// COPYRIGHT 2022 Peter Smith and Tucker McBay
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'model/app_state_model.dart';
import 'nevis_tab_bar.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppStateModel()),
        Provider(create: (context) => NevisTabBar())
      ],
      child: MyApp(),
    ),
  );
}
