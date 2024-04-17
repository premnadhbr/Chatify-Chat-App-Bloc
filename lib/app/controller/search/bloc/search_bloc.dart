// ignore_for_file: prefer_is_empty
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<Map> searchResult = [];
  SearchBloc() : super(SearchInitial()) {
    on<PerformSearchEvent>(performSearchEvent);
  }

  FutureOr<void> performSearchEvent(
      PerformSearchEvent event, Emitter<SearchState> emit) async {
    emit(SearchLoading());
    try {
      String currentUserUid = FirebaseAuth.instance.currentUser!.uid;
      String searchTerm = event.searchText.trim().toLowerCase();
      DocumentSnapshot currentUserDoc = await FirebaseFirestore.instance
          .collection('Users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();
      String currentUserName = currentUserDoc['name'];

      if (searchTerm.toLowerCase() == currentUserName.toLowerCase()) {
        emit(SearchUserNotFound(message: "You cannot search for yourself"));
        return;
      }

      searchResult = [];
      await FirebaseFirestore.instance
          .collection("Users")
          .where("name", isEqualTo: event.searchText)
          .where("uid", isNotEqualTo: currentUserUid)
          .get()
          .then((value) {
        if (value.docs.length < 1) {
          emit(SearchUserNotFound(message: "No user Found"));
        } else {
          value.docs.forEach((user) {
            searchResult.add(user.data());
          });
          emit(SearchLoaded(searchResult: searchResult));
        }
      });
    } catch (e) {
      emit(SearchError(error: "Error searching: $e"));
    }
  }
}
