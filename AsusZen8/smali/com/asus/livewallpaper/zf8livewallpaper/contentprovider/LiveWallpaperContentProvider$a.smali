.class Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider$a;
.super Ljava/util/ArrayList;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "com.asus.launcher"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.asus.launcher3"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "com.asus.launcher.twinviewmode"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
