import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../settings/presenation/provider/setting_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Text(context.watch<SettingProvider>().username, style: TextStyle(fontSize: 22)),
      ),
    );
  }
}