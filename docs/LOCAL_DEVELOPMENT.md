# Local development

## Toolchain baseline

The initial dependency baseline targets Flutter 3.50.0 / Dart 3.14.0. Confirm the installed toolchain with:

```sh
flutter --version
flutter doctor -v
```

## First dependency resolution

From the repository root:

```sh
flutter pub get
dart format .
flutter analyze --fatal-infos
flutter test
```

The repository currently does not contain a generated `pubspec.lock`. The first successful dependency resolution must be reviewed and committed so app dependency versions are reproducible. Do not claim a locked dependency graph until that file exists and has been checked in.

## Native platform wrappers

The initial source scaffold is in place, but generated Android and iOS host projects have not yet been committed. Do not treat the source scaffold as a completed device-runnable app. The next platform-foundation task is to generate and review the native host projects with the selected Flutter SDK, then commit the resulting Android and iOS configuration.

## IDE

Open the repository root in VS Code. The project is a standard Flutter/Dart source tree; no custom editor extension or local automation is required.
