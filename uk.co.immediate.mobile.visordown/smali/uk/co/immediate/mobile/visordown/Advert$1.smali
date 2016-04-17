.class Luk/co/immediate/mobile/visordown/Advert$1;
.super Ljava/lang/Object;
.source "Advert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/Advert;->renderAdvert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/Advert;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/Advert;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/Advert$1;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/Advert$1;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    # invokes: Luk/co/immediate/mobile/visordown/Advert;->renderAdvert()V
    invoke-static {v0}, Luk/co/immediate/mobile/visordown/Advert;->access$2(Luk/co/immediate/mobile/visordown/Advert;)V

    .line 55
    return-void
.end method
