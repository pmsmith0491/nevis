import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nevis_demo/invest/company_description.dart';
import 'package:nevis_demo/invest/fund_info.dart';
import 'package:nevis_demo/profile/user_data_object.dart';
import 'package:nevis_demo/profile/user_respository.dart';
import 'package:provider/provider.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:nevis_demo/app.dart';

import '../model/app_state_model.dart';
import 'fund.dart';

class InvestTab extends StatefulWidget {
  Map<String, double> fundMap = new Map();

  @override
  _InvestTabState createState() {
    return _InvestTabState();
  }
}

class _InvestTabState extends State<InvestTab> {

  SliverChildBuilderDelegate _buildSliverChildBuilderDelegate(
      AppStateModel model) {
    return SliverChildBuilderDelegate(
      (context, index) {
        switch (index) {
          case 0:
            return Column(children: <Widget>[
              PieChart(dataMap: widget.fundMap),
              Padding(padding: EdgeInsets.all(13)),
              Text(
                "Funds You've Invested In:",
                style: TextStyle(fontSize: 26),
              ),
              Padding(padding: EdgeInsets.all(13)),
              GestureDetector(
                onTap: () {
                  List<CompanyDescription> companies = [
                    CompanyDescription(
                      companyName: "JUMO",
                      description:
                          "A mobile financial services platform for mobile network operators and banks.",
                    ),
                    CompanyDescription(
                      companyName: "SoFi",
                      description:
                          "An online personal finance company that provides student loan refinancing, mortgages, personal loans, investing, and banking.",
                    ),
                    CompanyDescription(
                      companyName: "Paytm",
                      description:
                          "An Indian e-commerce payment system and financial technology company.",
                    ),
                    CompanyDescription(
                      companyName: "MPesa",
                      description: "A mobile mone transfer service in Kenya.",
                    ),
                    CompanyDescription(
                      companyName: "Transferwire",
                      description:
                          "A company that facilitates low-cost transfers between accounts in the UK and Europe.",
                    ),
                  ];
                  Route route = CupertinoPageRoute(
                      builder: (context) => FundInfo(
                            color: Colors.redAccent,
                            fundName: "FinTech",
                            companies: companies,
                            data: UserRepository.user[1].finTechInvestment,
                          ));
                  Navigator.push(context, route);
                },
                child: Fund(
                  fundName: "FinTech",
                ),
              ),
              Padding(padding: EdgeInsets.all(13)),
              GestureDetector(
                onTap: () {
                  List<CompanyDescription> companies = [
                    CompanyDescription(
                      companyName: "Goodlife Pharmacy",
                      description:
                          "A collection of independent pharmacies with the goal of bringing back the traditional values of neighborhood pharmacy.",
                    ),
                    CompanyDescription(
                      companyName: "Helium Health",
                      description:
                          "Provides a suite of cutting-edge technology solutions for all healthcare.",
                    ),
                    CompanyDescription(
                      companyName: "Virta Health",
                      description:
                          "Creating the first clinically-proven treatment for Diabetes Reversal.",
                    ),
                    CompanyDescription(
                      companyName: "ZipLine",
                      description:
                          "Drone delivery company for medical products and resources in third world countries.",
                    ),
                  ];
                  Route route = CupertinoPageRoute(
                      builder: (context) => FundInfo(
                            fundName: "HealthCare",
                            companies: companies,
                            data: UserRepository.user[1].healthCareInvestment,
                          ));
                  Navigator.push(context, route);
                },
                child: Fund(
                  color: Colors.blueAccent,
                  fundName: "HealthCare",
                ),
              ),
              Padding(padding: EdgeInsets.all(13)),
              GestureDetector(
                onTap: () {
                  List<CompanyDescription> companies = [
                    CompanyDescription(
                      companyName: "Indigo AG",
                      description:
                          "Harnessing nature and partnering with farmers to promote sustainability.",
                    ),
                    CompanyDescription(
                      companyName: "Ag Biome",
                      description:
                          "We develop innovative cutting-edge solutions using new knowledge of the plant-associated microbiome to create novel products.",
                    ),
                    CompanyDescription(
                      companyName: "Impossible Foods",
                      description:
                          "Developing plant based meat substitutes that are nutritiously superior to and equal in flavor with real meat.",
                    ),
                    CompanyDescription(
                      companyName: "Apeel Industries",
                      description:
                          "Harnessing renwable biotech for food preservation.",
                    ),
                    CompanyDescription(
                      companyName: "Sensefly",
                      description: "Professional drone services.",
                    ),
                  ];
                  Route route = CupertinoPageRoute(
                      builder: (context) => FundInfo(
                            color: Colors.greenAccent,
                            fundName: "Agriculture",
                            companies: companies,
                            data: UserRepository.user[1].agriculture,
                          ));
                  Navigator.push(context, route);
                },
                child: Fund(
                  color: Colors.greenAccent,
                  fundName: "Agriculture",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
              ),
            ]);

          default:
          // Do nothing. For now.
        }
        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    widget.fundMap.putIfAbsent(
        "FinTech", () => UserRepository.user[1].finTechInvestment.data);
    widget.fundMap.putIfAbsent(
        "HealthCare", () => UserRepository.user[1].healthCareInvestment.data);
    widget.fundMap.putIfAbsent(
        "Agriculture", () => UserRepository.user[1].agriculture.data);
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return CustomScrollView(
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Invest', style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.indigoAccent,
            ),
            SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(top: 8),
              sliver: SliverList(
                delegate: _buildSliverChildBuilderDelegate(model),
              ),
            )
          ],
        );
      },
    );
  }
}
