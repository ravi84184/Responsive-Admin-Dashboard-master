import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:responsive_admin_dashboard/controllers/controller.dart';
import 'package:responsive_admin_dashboard/screens/dash_board_screen.dart';

import 'package:responsive_admin_dashboard/services/injection_dir/injection.dart'
as di;
import 'screens/company_page/controller/company_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.configureDependencies();
  await GetIt.instance.allReady();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ravi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Controller(),
          ),
          ChangeNotifierProvider(
            create: (context) => CompanyController(),
          ),
        ],
        child: DashBoardScreen(),
      ),
    );
  }
}
