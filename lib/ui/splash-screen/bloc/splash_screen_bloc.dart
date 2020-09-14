import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:permission_handler/permission_handler.dart';
part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  final SplashScreenState initial;
  Permission permission = Permission.storage;

  @override
  SplashScreenBloc(this.initial) : super(initial);

  @override
  Stream<SplashScreenState> mapEventToState(
    SplashScreenEvent event,
  ) async* {
    if (event is NavigateToHomeScreenEvent) {
      yield Loading();
      await Future.delayed(Duration(seconds: 2));
      //await Future.wait([preLoad()]);
      yield Loaded();
    }
  }
}

Future preLoad() {
  // checkpath();
  // _initPackageInfo();
  // return fetchWalls().then((value) {
  //   wallpapers = value;
  //   getRandom();
  //   wallpapers.forEach((walls) {
  //     if (!categories.contains(walls.collections)) {
  //       categories.add(walls.collections);
  //     }
  //   });
  //   makeCollections();
  //   checkfavourites();
  // });
}
