import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterapp/views/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return ViewModelBuilder<HomeViewModel>.reactive(viewModelBuilder: ()=> HomeViewModel(),
onModelReady: (ViewModel){},
 builder: (context,viewModel,child)=> Scaffold(
  body: Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("${viewModel.counter}",style: TextStyle(fontSize: 25),),
      ElevatedButton(onPressed: (){
        viewModel.addValue();
      }, child: Text("add"))
    ],
  ))
),
);
  }
}