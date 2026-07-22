# Android App Links Setup

The app declares an Android App Link for `https://allworkss.space` so ABIS links can open directly in the installed Android app.

## Required website file

Before Play Store production rollout, host this file on the website:

```text
https://allworkss.space/.well-known/assetlinks.json
```

Use the template below and replace `YOUR_RELEASE_KEY_SHA256_FINGERPRINT` with the SHA-256 fingerprint of the Play Store signing key or upload key configured for the release.

```json
[
  {
    "relation": ["delegate_permission/common.handle_all_urls"],
    "target": {
      "namespace": "android_app",
      "package_name": "com.allworkss.abis",
      "sha256_cert_fingerprints": [
        "YOUR_RELEASE_KEY_SHA256_FINGERPRINT"
      ]
    }
  }
]
```

## Why this matters

- Users who tap ABIS links can land in the app instead of a browser.
- Google Play can verify the app owns the domain.
- OAuth/payment redirects are easier to keep inside the app experience.
