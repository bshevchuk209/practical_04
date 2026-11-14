# Практична робота №4

Варіант 24: seedColor = Colors.yellow, крок лічильника 3, FloatingActionButton з Icons.person. Доступні Android і Web.

## Запуск в Android Studio

1. File → Open → відкрити цю папку (де лежить pubspec.yaml), а не лише android/.
2. Переконатися, що встановлені плагіни Flutter та Dart, вказати Flutter SDK.
3. Виконати `flutter pub get` у терміналі.
4. Запустити Android-емулятор або підключити телефон із USB debugging.
5. Відкрити lib/main.dart і натиснути Run.

Команди з цієї папки:

```powershell
flutter pub get
dart analyze
flutter test
flutter run
flutter build apk --release
```

APK: `build/app/outputs/flutter-apk/app-release.apk`.
Android applicationId унікальний для кожної роботи, тому всі п’ять можна встановити одночасно.
Збірка release використовує стандартний навчальний debug-підпис; для Google Play потрібен власний підпис.

Основний інтерфейс: `lib/main.dart`.

## Appetize.io

Методичка вимагає завантажити APK на Appetize.io. Після збірки увійти у свій обліковий запис, завантажити app-release.apk та зберегти посилання для викладача. Зовнішнє завантаження ще не виконано.

Web: `flutter run -d chrome` або `flutter build web`.
