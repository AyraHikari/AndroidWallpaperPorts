.class Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c$a;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "2A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v15, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    const-class v3, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v14, "dark.mp4"

    const-string v13, "dark_preview.mp4"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v10

    const-wide/32 v5, 0x30d42

    const/high16 v7, 0x7f040000

    const v8, 0x7f040003

    const v9, 0x7f040005

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v16, 0x7f040001

    const v17, 0x7f040004

    move-object v3, v15

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v19, v14

    move/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;-><init>(Ljava/lang/String;JIII[Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2B"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v15, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    const-class v4, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v14, "light.mp4"

    const-string v13, "light_preview.mp4"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v11

    const-wide/32 v6, 0x30d41

    const v8, 0x7f04000b

    const v9, 0x7f04000d

    const v10, 0x7f04000f

    const/4 v12, 0x0

    const/16 v16, 0x0

    const v17, 0x7f04000c

    const v20, 0x7f04000e

    move-object v4, v15

    move-object/from16 v21, v13

    move/from16 v13, v16

    move-object/from16 v22, v14

    move/from16 v14, v17

    move-object/from16 v16, v3

    move-object v3, v15

    move/from16 v15, v20

    invoke-direct/range {v4 .. v15}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;-><init>(Ljava/lang/String;JIII[Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v9

    const-wide/32 v4, 0x30d41

    const/high16 v6, 0x7f040000

    const v7, 0x7f040003

    const v8, 0x7f040005

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f040001

    const v13, 0x7f040004

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;-><init>(Ljava/lang/String;JIII[Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, v21

    move-object/from16 v4, v22

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v9

    const-wide/32 v4, 0x30d41

    const v6, 0x7f04000b

    const v7, 0x7f04000d

    const v8, 0x7f04000f

    const v12, 0x7f04000c

    const v13, 0x7f04000e

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;-><init>(Ljava/lang/String;JIII[Ljava/lang/String;Ljava/lang/String;ZII)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
