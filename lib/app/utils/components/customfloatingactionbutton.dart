import 'package:chat_app/app/utils/animation/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import '../../controller/chat/bloc/chat_bloc.dart';

class CustomFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor),
          color: AppColors.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      height: 70,
      width: 70,
      child: FloatingActionButton(
        elevation: 2,
        onPressed: () {
          BlocProvider.of<ChatBloc>(context).add(NavigateToSearchPageEvent());
        },
        child: const Icon(Iconsax.add, size: 35),
        backgroundColor: AppColors.primaryColor,
        shape: const CircleBorder(),
      ),
    );
  }
}
