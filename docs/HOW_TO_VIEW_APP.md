# How to View the ABIS Android App

Use these steps in Android Studio to see the app on a phone or emulator.

## Run on your Android phone

1. Connect your Android phone with USB.
2. Enable **Developer options** on the phone.
3. Enable **USB debugging**.
4. In Android Studio, use the top device selector. If it says **No Devices**, select your phone after USB debugging is allowed.
5. Select the `app` run configuration.
6. Press the green **Run** button.
7. The ABIS splash screen appears, then the app loads `https://allworkss.space`.

## Run on an emulator

1. Android Studio → **Device Manager**.
2. Create a virtual device, for example Pixel 7 or Pixel 8.
3. Start the emulator.
4. Select the emulator from the device selector.
5. Press **Run**.

## Build APK manually

```bash
gradle :app:assembleDebug
```

APK output path:

```text
app/build/outputs/apk/debug/app-debug.apk
```

## What you should see

- Native ABIS loading screen first.
- Same ABIS website UI inside the app.
- Android file picker for uploads.
- Android Downloads folder for PDFs/reports.
- Razorpay/UPI payment deep links should open payment apps where available.
