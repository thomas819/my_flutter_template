import 'package:flutter/material.dart';
import '../domain/user_entity.dart';

class UserTile extends StatelessWidget {
  final UserEntity user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(user.name));
  }
}