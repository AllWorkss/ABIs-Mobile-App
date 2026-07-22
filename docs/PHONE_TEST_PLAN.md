# ABIS Android Phone Test Plan

Use this checklist before Play Store upload.

## Devices

- Android 8/9 low-end phone.
- Android 12/13 mid-range phone.
- Android 14/15 current phone or emulator.

## Checks

| Flow | Expected result |
| --- | --- |
| Launch app | ABIS loads at `https://allworkss.space`. |
| No internet | Offline screen appears with retry and settings buttons. |
| Reconnect internet | App reloads ABIS after returning to foreground. |
| Google login | OAuth completes and user returns to ABIS. |
| Razorpay checkout | Checkout opens and payment/deep links do not crash app. |
| File upload | Android picker opens and selected CSV/Excel reaches the web form. |
| PDF download | Report downloads to the Android Downloads folder. |
| Back button | Navigates web history first, exits only at first page. |
| Rotate phone | App preserves WebView state instead of resetting to blank page. |
| ABIS link tap | `https://allworkss.space` links open the app after App Links verification. |

## Pass criteria

The MVP is ready for closed Play Store testing when all critical flows pass on at least two physical Android phones.
