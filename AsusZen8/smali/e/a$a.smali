.class Le/a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a;->y(Lh/a;[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/a;

.field final synthetic b:Le/a;


# direct methods
.method constructor <init>(Le/a;Lh/a;)V
    .locals 0

    iput-object p1, p0, Le/a$a;->b:Le/a;

    iput-object p2, p0, Le/a$a;->a:Lh/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Le/a$a;->a:Lh/a;

    invoke-virtual {p0}, Lh/a;->a()V

    return-void
.end method
