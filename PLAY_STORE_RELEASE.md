# ABIS Android Play Store Release Guide

This repository contains a low-cost Android WebView app for ABIS. It is intended to reuse the existing production web app and avoid paid native rewrite work.

## Release checklist

1. Open this project in Android Studio.
2. Confirm `https://allworkss.space` is live, HTTPS-only, and mobile responsive.
3. Build a release Android App Bundle (`.aab`).
4. Create a signing key and keep it private.
5. Upload the signed `.aab` to the Google Play Console.
6. Complete Play Store listing details:
   - App name: ABIS
   - Short description: Business intelligence reports for growing companies.
   - Category: Business
   - Contact email: theallworkss@gmail.com
   - Privacy policy URL: your public privacy policy page.
7. Complete the Data Safety form. This app loads the ABIS website and may process login, uploaded files, payments, and generated reports through the web backend.
8. Configure Android App Links using `docs/ANDROID_APP_LINKS.md` so `https://allworkss.space` links can open the installed app.
9. Test Google OAuth, Razorpay checkout, file upload, PDF report download, and offline/retry behavior on a real Android phone.

## Free/low-cost notes

- The Android app uses platform WebView APIs only.
- No paid mobile SDK is required in this repository.
- Razorpay and Google login continue to run through the existing website flow.
- Google Play Developer account fees and payment processor fees are external platform costs.

## Future native upgrade

After the WebView MVP is published and validated, the next upgrade can be a native React Native or Kotlin app with Razorpay Android SDK, push notifications, local report cache, and native dashboards.
