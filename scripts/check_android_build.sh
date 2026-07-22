#!/usr/bin/env bash
set -u

printf 'ABIS Android build check\n'
printf '========================\n'

if ! command -v java >/dev/null 2>&1; then
  printf 'FAIL: Java is not installed. Install JDK 17+ and retry.\n'
  exit 1
fi
printf 'OK: Java found: %s\n' "$(java -version 2>&1 | head -n 1)"

if ! command -v gradle >/dev/null 2>&1; then
  printf 'FAIL: Gradle is not installed. Install Gradle or open the project in Android Studio.\n'
  exit 1
fi
printf 'OK: Gradle found: %s\n' "$(gradle --version | sed -n '3p' | xargs)"

if [ ! -f settings.gradle ] || [ ! -f build.gradle ] || [ ! -f app/build.gradle ]; then
  printf 'FAIL: Android Gradle project files are missing.\n'
  exit 1
fi
printf 'OK: Android Gradle project files found.\n'

printf '\nRunning debug build...\n'
if gradle :app:assembleDebug; then
  printf '\nSUCCESS: Debug APK built at app/build/outputs/apk/debug/app-debug.apk\n'
else
  printf '\nFAIL: Gradle build failed. If the error mentions Google/Maven/plugin download, open the repo in Android Studio or run in a network that can access Google Maven.\n'
  exit 1
fi
