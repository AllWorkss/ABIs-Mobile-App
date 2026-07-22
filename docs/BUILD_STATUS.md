# ABIS Android App Build Status

## Current completion

The Android app is currently a **WebView MVP** that reuses the live ABIS website. This is the lowest-cost way to get an Android app ready for Play Store testing before spending money on a full native rewrite.

| Area | Status | Notes |
| --- | --- | --- |
| Android project scaffold | Done | Gradle Android app module exists. |
| App identity | Done | Package id is `com.allworkss.abis`; app name is `ABIS`. |
| Web app loading | Done | Loads `https://allworkss.space` in Android WebView. |
| Google OAuth web flow | Done | WebView cookies and third-party cookies are enabled for login redirects. |
| Razorpay web checkout | Done | HTTP/HTTPS and Android intent links are handled. |
| File upload | Done | Android file picker is wired through WebChromeClient. |
| PDF/report download | Done | Android DownloadManager is wired for web downloads. |
| Offline UX | Done | User sees retry/settings screen when internet is unavailable. |
| HTTPS-only policy | Done | Cleartext traffic is disabled in manifest and network security config. |
| Play Store release docs | Done | Release checklist exists in `PLAY_STORE_RELEASE.md`. |
| GitHub Actions debug APK | Done | Workflow builds and uploads a debug APK artifact when pushed to GitHub. |
| Native UI rewrite | Not started | Optional future upgrade after MVP validation. |
| Push notifications | Not started | Optional future upgrade. |
| Native Razorpay SDK | Not started | Optional future upgrade; current build uses web checkout. |

## How to see the app

### Option A: Android Studio preview/run

1. Open this repository in Android Studio.
2. Let Android Studio sync Gradle.
3. Connect an Android phone or start an emulator.
4. Press **Run**.
5. The app should open ABIS at `https://allworkss.space`.

### Option B: Command line debug APK

```bash
./scripts/check_android_build.sh
```

If Gradle sync succeeds, build the debug APK:

```bash
gradle :app:assembleDebug
```

Then install it on a connected Android phone:

```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

### Option C: Play Store release bundle

```bash
gradle :app:bundleRelease
```

Upload the signed `.aab` through Google Play Console.

## Important limitation

This repo contains the Android app source. The app display depends on the live ABIS web app at `https://allworkss.space`. If that site is down, not mobile responsive, or missing features, the Android app will show the same issue because this MVP intentionally reuses the website to keep cost low.
