enum AppLanguage with Comparable<AppLanguage> {
  kk('Қазақша', 'Kz', 'kk'),
  ru('Русский', 'Ru', 'ru'),
  en('English', 'En', 'en');

  const AppLanguage(this.title, this.code, this.localeCode);

  final String title;
  final String code;
  final String localeCode;

  R when<R>({
    required R Function() kk,
    required R Function() ru,
    required R Function() en,
  }) {
    switch (this) {
      case AppLanguage.kk:
        return kk();
      case AppLanguage.ru:
        return ru();
      case AppLanguage.en:
        return en();
    }
  }

  static AppLanguage fromString(String source) => AppLanguage.values.byName(source);

  @override
  int compareTo(AppLanguage other) => index.compareTo(other.index);
}
