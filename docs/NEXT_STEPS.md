# ABIS Android Next Steps

This is the practical roadmap from the current low-cost WebView MVP toward a stronger Play Store release and, later, a full native app.

## Next 1: Get a visible APK

1. Push this repository to GitHub.
2. Open the **Actions** tab.
3. Run **Android Build** manually or push a branch.
4. Download the `abis-debug-apk` artifact from the workflow run.
5. Install it on an Android phone for testing.

## Next 2: Real phone testing

Test these flows on a physical Android phone:

- App launch and ABIS website loading.
- Google sign-in.
- Razorpay checkout and UPI/payment app redirects.
- CSV/Excel upload in analysis modules.
- PDF/report download.
- Android back button behavior.
- Internet off/on retry behavior.
- Links to `https://allworkss.space` opening in the installed app after App Links setup.

## Next 3: Play Store preparation

- Create Google Play Developer account.
- Prepare app icon, screenshots, privacy policy URL, and short/full descriptions.
- Generate signed release `.aab` from Android Studio.
- Configure `assetlinks.json` on `https://allworkss.space` using `docs/ANDROID_APP_LINKS.md`.
- Complete Play Console Data Safety form.

## Next 4: Upgrade path after MVP

After users validate the WebView MVP, build a native app in phases:

1. Native dashboard shell.
2. Native login/session handling.
3. Native Razorpay Android SDK integration.
4. Native module forms for all ABIS reports.
5. Local report cache and share/download manager.
6. Push notifications for report completion.
7. Full offline-ready report history.

## Cost-control rule

Do not rewrite everything natively before the first Play Store validation. Ship the WebView MVP first, measure demand, then spend on native screens only for features users actually use.
