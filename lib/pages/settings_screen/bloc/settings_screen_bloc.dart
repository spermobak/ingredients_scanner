import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get_it/get_it.dart';
import 'package:ingredients_scanner/models/settings/user_pereference.dart';
import 'package:talker_flutter/talker_flutter.dart';

part 'settings_screen_event.dart';
part 'settings_screen_state.dart';

class SettingsScreenBloc
    extends Bloc<SettingsScreenEvent, SettingsScreenState> {
  SettingsScreenBloc() : super(SettingsScreenInitial()) {
    on<LoadSettingScreen>(_load);
  }

  Future<void> _load(
    LoadSettingScreen event,
    Emitter<SettingsScreenState> emit,
  ) async {
    try {
      if (state is! SettingsScreenLoaded) {
        emit(SettingsScreenLoading());
      }
      final preferences = await UserPreferences.getUserPreferences();
      emit(SettingsScreenLoaded(userPreferences: preferences));
    } catch (e, st) {
      emit(SettingsScreenLoadingFailure(exception: e));
      GetIt.I<Talker>().handle(e, st);
    } finally {
      event.completer?.complete();
    }
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    GetIt.I<Talker>().handle(error, stackTrace);
  }
}
