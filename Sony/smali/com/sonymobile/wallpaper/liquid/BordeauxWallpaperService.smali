.class public Lcom/sonymobile/wallpaper/liquid/BordeauxWallpaperService;
.super Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;
.source "BordeauxWallpaperService.java"


# instance fields
.field private final COLOR_ID_BORDEAUX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;-><init>()V

    const/16 v0, 0x43

    .line 16
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/BordeauxWallpaperService;->COLOR_ID_BORDEAUX:I

    return-void
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 3

    .line 23
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    const/16 v1, 0x43

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;-><init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService;IZ)V

    return-object v0
.end method
