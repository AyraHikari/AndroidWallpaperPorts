// IAsusKeyguardStatusNotifierService.aidl
package com.asus.keyguard.module.statusnotifier;

import com.asus.keyguard.module.statusnotifier.IAsusKeyguardStatusCallback;

interface IAsusKeyguardStatusNotifierService {
    // for client (watchers) to register callback
    void registerCallback(IAsusKeyguardStatusCallback cb);
    void unregisterCallback(IAsusKeyguardStatusCallback cb);
}