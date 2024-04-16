import 'package:chat_app/app/controller/chat/bloc/chat_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; // Import Flutter Bloc
import 'package:google_fonts/google_fonts.dart';

class DeleteChatAlertDialog extends StatelessWidget {
  final String friendId;
  final String userId;

  const DeleteChatAlertDialog(
      {Key? key, required this.friendId, required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Delete Chat',
        style: GoogleFonts.poppins(fontSize: 20),
      ),
      content: Text(
        'Are you sure you want to delete this Chat?',
        style: GoogleFonts.poppins(),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            'Cancel',
            style: GoogleFonts.poppins(),
          ),
        ),
        TextButton(
          onPressed: () {
            BlocProvider.of<ChatBloc>(context).add(ChattedFriendDeleteEvent(
                currentUid: userId, friendId: friendId));
          },
          child: Text(
            'Delete',
            style: GoogleFonts.poppins(),
          ),
        ),
      ],
    );
  }
}
