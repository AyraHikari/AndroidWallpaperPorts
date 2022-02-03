.class Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceLockedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;


# direct methods
.method private constructor <init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$1;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;-><init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 266
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$DeviceLockedReceiver;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Z)V

    return-void
.end method
