# ABIS Mobile App

Free, low-cost Android wrapper for the ABIS web application at `https://allworkss.space`.

## What this app does

- Loads the existing ABIS SaaS web app in a secure Android WebView.
- Supports Google OAuth redirects in the same WebView.
- Supports Razorpay web checkout from the existing web payment flow.
- Supports file upload from Android storage/camera providers.
- Supports report/PDF downloads through Android Download Manager.
- Shows a friendly offline screen when the phone has no internet.
- Uses only free Android platform components; there are no paid mobile SDK dependencies.

## Build status and preview

To see how much of the Android app is complete and how to run it on a phone/emulator, read [`docs/BUILD_STATUS.md`](docs/BUILD_STATUS.md).

Run the local build checker:

```bash
./scripts/check_android_build.sh
```

## CI build

GitHub Actions workflow `.github/workflows/android.yml` builds the debug APK and uploads it as an artifact named `abis-debug-apk`. See [`docs/NEXT_STEPS.md`](docs/NEXT_STEPS.md) for how to get a visible APK from GitHub.

## Build

```bash
gradle :app:assembleDebug
```

For Play Store upload, generate a signed Android App Bundle from Android Studio or run:

```bash
gradle :app:bundleRelease
```

> Note: Play Store publishing still requires a Google Play Developer account.

## App configuration

- Package/application id: `com.allworkss.abis`
- App name: `ABIS`
- Website URL: `https://allworkss.space`
- Min SDK: 23
- Target SDK: 35
