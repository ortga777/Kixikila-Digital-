import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'screens/group/create_group_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/create': (context) => const CreateGroupScreen(),
};
