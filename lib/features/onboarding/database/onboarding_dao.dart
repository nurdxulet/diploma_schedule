import 'package:schedule/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IOnboardingDao {
  PreferencesEntry<String> get university;

  PreferencesEntry<String> get educationalProgram;

  PreferencesEntry<String> get course;

  PreferencesEntry<List<String>> get groups;

  PreferencesEntry<bool> get onboarding;

  PreferencesEntry<bool> get notifications;
  PreferencesEntry<String> get notificationsId;
}

class OnboardingDao extends TypedPreferencesDao implements IOnboardingDao {
  OnboardingDao({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences, name: 'onboarding');

  @override
  PreferencesEntry<String> get university => stringEntry('university');

  @override
  PreferencesEntry<String> get educationalProgram => stringEntry('educational_program');

  @override
  PreferencesEntry<List<String>> get groups => stringListEntry('groups');

  @override
  PreferencesEntry<bool> get onboarding => boolEntry('onboarding');

  @override
  PreferencesEntry<bool> get notifications => boolEntry('notifications');

  @override
  PreferencesEntry<String> get notificationsId => stringEntry('notifications_id');

  @override
  PreferencesEntry<String> get course => stringEntry('course');
}
