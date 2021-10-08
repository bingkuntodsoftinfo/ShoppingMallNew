import 'package:flutter/material.dart';
import 'package:shoppingmall/states/authen.dart';
import 'package:shoppingmall/states/buyer_service.dart';
import 'package:shoppingmall/states/create_account.dart';
import 'package:shoppingmall/states/rider_service.dart';
import 'package:shoppingmall/states/saler_service.dart';
import 'package:shoppingmall/uitility/my_constant.dart';

final Map<String,WidgetBuilder> map={
  '/authen':(BuildContext context)=>const Authen(),
  '/createAccount':(BuildContext context)=>const CreateAccount(),
  '/buyerService':(BuildContext context)=>const BuyerService(),
  '/salerService':(BuildContext context)=>const SalerService(),
  '/riderService':(BuildContext context)=>const RiderService(),
};

String? initailRoute;

void main(){
  initailRoute=MyConstant.routeAuthen;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initailRoute,
    );
  }
}