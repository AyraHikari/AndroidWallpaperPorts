.class public Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;
.super Landroid/content/ContentProvider;
.source ""


# static fields
.field public static final b:Landroid/net/Uri;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.asus.livewallpaper.zf8livewallpaper.contentprovider/live_wallpaper_images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider$a;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    const-string p0, "live_wallpaper_hide_in_picker"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2, p3}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c;->f(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    const-string p2, "key_live_wallpaper_hide_in_launcher"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "live_wallpaper_uri_thumbnail"

    const-string v2, "live_wallpaper_uri_game_on"

    const-string v3, "live_wallpaper_uri_lock"

    const-string v4, "live_wallpaper_uri_home"

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    const/4 p1, 0x0

    packed-switch v5, :pswitch_data_0

    move-object v0, p1

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    const-string v0, "key_live_wallpaper_thumbnail"

    goto :goto_1

    :pswitch_1
    const-string v0, "key_live_wallpaper_home_game_on"

    move-object v1, v2

    goto :goto_1

    :pswitch_2
    const-string v0, "key_live_wallpaper_lock"

    move-object v1, v3

    goto :goto_1

    :pswitch_3
    const-string v0, "key_live_wallpaper_home"

    move-object v1, v4

    :goto_1
    if-nez v1, :cond_4

    return-object p1

    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x249a985e -> :sswitch_3
        -0x2498c812 -> :sswitch_2
        0x10ce3ba9 -> :sswitch_1
        0x29d22009 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 p2, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    const-string v0, "live_wallpaper_service_name"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "trigger_live_wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "LiveWallpaperContentProvider"

    const-string p1, "Trigger"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/g;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p2

    :cond_4
    invoke-virtual {p0, p1, p3}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/LiveWallpaperContentProvider;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    :goto_0
    return-object p2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/a;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/a;->a(Ljava/io/File;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
