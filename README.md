# ninefold-site

Public pages for **Ninefold** (iOS Sudoku), served by GitHub Pages.

- Landing: https://smdash.github.io/ninefold-site/
- Support: https://smdash.github.io/ninefold-site/support.html
- Privacy: https://smdash.github.io/ninefold-site/privacy.html

The privacy policy must match the app's real data behaviour: one AdMob interstitial between puzzles plus an optional rewarded video for missed dailies, UMP consent
and ATT (both deferred until the first finished puzzle), a Remove Ads non-consumable via StoreKit 2; no analytics,
no account, no iCloud, everything else on-device. Update it in the same release as any change, and keep it
consistent with the App Store privacy label.

The contact address is filled in from an environment variable before publishing:

    CONTACT_EMAIL=you@example.com sh set-contact.sh

`app-ads.txt` is NOT here: it lives at the domain root in the `smdash.github.io` repo (account-wide, same publisher).
