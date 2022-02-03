.class Lg/e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/e;->b(Lg/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/d;

.field final synthetic b:Lg/e;


# direct methods
.method constructor <init>(Lg/e;Lg/d;)V
    .locals 0

    iput-object p1, p0, Lg/e$a;->b:Lg/e;

    iput-object p2, p0, Lg/e$a;->a:Lg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lg/e$a;->a:Lg/d;

    invoke-virtual {v0}, Lg/d;->f()Lg/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg/e$a;->a:Lg/d;

    invoke-virtual {p0}, Lg/d;->f()Lg/c;

    move-result-object p0

    invoke-virtual {p0}, Lg/c;->h()V

    :cond_0
    return-void
.end method
