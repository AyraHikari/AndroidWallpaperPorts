.class public Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;
.super Landroid/service/wallpaper/WallpaperService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;

    invoke-direct {v0, p0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method
