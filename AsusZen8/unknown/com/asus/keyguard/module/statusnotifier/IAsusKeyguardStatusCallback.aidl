// IAsusKeyguardStatusCallback.aidl
package com.asus.keyguard.module.statusnotifier;

oneway interface IAsusKeyguardStatusCallback {
    void onKeyguardShowingChanged(boolean isShowing, String currentLiveWallpaper);
    void onKeyguardOccludedChanged(boolean isOccluded, String currentLiveWallpaper);
    void onStartKeyguardGoingAway(String currentLiveWallpaper, boolean applyFadeoutAnimation);
}