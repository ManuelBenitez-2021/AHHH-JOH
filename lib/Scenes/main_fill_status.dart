import 'dart:async';

import 'package:ahhh_joh/Models/model_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ahhh_joh/Utils/app_util.dart' as AppUtils;
import 'package:progress_hud/progress_hud.dart';
import 'package:http/http.dart' as http;


class FillStatusScreen extends StatefulWidget {
  @override
  _FillStatusScreen createState() => _FillStatusScreen();
}

class _FillStatusScreen extends State<FillStatusScreen> {

  ProgressHUD progressHUD;

  Future updateOrder(String title) async {
    Timer(
        Duration(milliseconds: 100),
            () =>
            progressHUD.state.show()
    );

    title = title.replaceAll(" ", "_").toUpperCase();

    http.Response response = await http.put(AppUtils.ORDER_UPDATE + AppUtils.gSelOrder.id + "?token=" + AppUtils.token
      , body: "{\"fulfillmentStatus\":\"" + title + "\"}"
      , headers: { "Content-Type" : "application/json;charset=utf-8"});
    if(response.statusCode == 200) {
      AppUtils.gSelOrder.fulfillmentStatus = title;
      Navigator.of(context).pop(true);
    }

    setState(() {
      progressHUD.state.dismiss();
    });
  }

  @override
  void initState() {
    super.initState();

    progressHUD = new ProgressHUD(
      backgroundColor: Colors.black45,
      color: Colors.black,
      containerColor: Colors.white,
      borderRadius: 5.0,
      loading: false,
      text: 'Loading...',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fulfillment status'),
        brightness: Brightness.dark,
        backgroundColor: Colors.black87,
        textTheme: AppUtils.titleTheme,
        leading: new IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop(false);
            }
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container (
              padding: EdgeInsets.fromLTRB(12, 24, 12, 4),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: fillStatusList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      updateOrder(fillStatusList[index].title.toUpperCase());
                    },

                    child: StatusModelUI(model: fillStatusList[index], orderModel: AppUtils.gSelOrder,),
                  );
                },
              ),
          ),
          progressHUD,
        ]
      )
    );
  }

}