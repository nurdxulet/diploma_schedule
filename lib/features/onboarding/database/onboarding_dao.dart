import 'package:schedule/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IOnboardingDao {
  PreferencesEntry<String> get university;

  PreferencesEntry<String> get educationalProgram;

  PreferencesEntry<String> get group;

  PreferencesEntry<bool> get onboarding;
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
  PreferencesEntry<String> get group => stringEntry('group');

  @override
  PreferencesEntry<bool> get onboarding => boolEntry('onboarding');
}
