.class public Lcom/sonymobile/wallpaper/bq/BlackWallpaperService;
.super Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;
.source "BlackWallpaperService.java"


# instance fields
.field protected final COLOR_ID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;-><init>()V

    const/16 v0, 0x82

    .line 12
    iput v0, p0, Lcom/sonymobile/wallpaper/bq/BlackWallpaperService;->COLOR_ID:I

    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 3

    .line 19
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;-><init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;IZ)V

    return-object v0
.end method
