.class public Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WallpaperEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;,
        Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;
    }
.end annotation


# instance fields
.field private final mCid:I

.field private mDeviceLockedReceiver:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

.field private mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mLocked:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

.field private final mUseHwCid:Z

.field final synthetic this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;IZ)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    .line 49
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 54
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    .line 64
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    .line 84
    iput p2, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mCid:I

    .line 85
    iput-boolean p3, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mUseHwCid:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->syncLockedState(Z)V

    return-void
.end method

.method private isDeviceLocked()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setDarkColorHints(Landroid/app/WallpaperColors;)V
    .locals 7

    :try_start_0
    const-string v0, "android.app.WallpaperColors"

    .line 188
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setColorHints"

    .line 189
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 190
    invoke-static {v0, v1, v2, v4}, Lcom/sonymobile/wallpaper/liquid/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 195
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "HINT_SUPPORTS_DARK_THEME"

    .line 197
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v3, v6

    .line 195
    invoke-static {v1, p1, v2, v4, v3}, Lcom/sonymobile/wallpaper/liquid/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private syncLockedState(Z)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->isDeviceLocked()Z

    move-result v0

    .line 136
    iget-boolean v1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_1

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

    invoke-virtual {p1, v0}, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->onLocked(Z)V

    .line 138
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mLocked:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public onComputeColors()Landroid/app/WallpaperColors;
    .locals 2

    .line 180
    new-instance v0, Landroid/graphics/Color;

    invoke-direct {v0}, Landroid/graphics/Color;-><init>()V

    .line 181
    new-instance v1, Landroid/app/WallpaperColors;

    invoke-direct {v1, v0, v0, v0}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V

    .line 182
    invoke-direct {p0, v1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->setDarkColorHints(Landroid/app/WallpaperColors;)V

    return-object v1
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 7

    .line 93
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 96
    :try_start_0
    new-instance p1, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    invoke-direct {p1, p0, v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;-><init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    .line 97
    new-instance p1, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    iget-object v3, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->isPreview()Z

    move-result v4

    iget v5, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mCid:I

    iget-boolean v6, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mUseHwCid:Z

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ZIZ)V

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

    .line 99
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 100
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mKeyGuardManager:Landroid/app/KeyguardManager;

    .line 101
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mPowerManager:Landroid/os/PowerManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 106
    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->syncLockedState(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_0

    .line 109
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e7

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 115
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;-><init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$1;)V

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    .line 116
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 2

    .line 147
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mDeviceLockedReceiver:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->this$0:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onDestroy()V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mRenderer:Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->clean()V

    .line 172
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onResume()V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->mGlView:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->onPause()V

    :goto_0
    return-void
.end method
