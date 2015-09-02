homebrew-android
================

Formulas for managing an Android SDK and NDK install.  I got tired of needing to use the Android SDK tool to manage
these packages, so I wrote some homebrew formulas instead - and some scripts to keep them maintained. The files in bin 
are used to generate the SDK formulas from the "real" android repository URLs (just like the Android SDK tool does).

To use, just `brew tap toonetown/android`.  You may also want to pin the default formulas to read from this tap, so
run `brew tap-pin toonetown/android` afterwards.

Only the latest version of the build-tools will install - and it will be kept up-to-date.  Obsolete versions are not
included.  Currently only the stuff from the main repository (repository-11.xml) and sys-img.xml are included.  I doubt
I will ever do glass or Android TV repositories (because I personally don't use them).
