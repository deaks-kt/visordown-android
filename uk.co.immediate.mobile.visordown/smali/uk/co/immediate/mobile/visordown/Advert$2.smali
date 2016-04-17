.class Luk/co/immediate/mobile/visordown/Advert$2;
.super Ljava/lang/Object;
.source "Advert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/Advert$2;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Luk/co/immediate/mobile/visordown/Advert$2;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    # getter for: Luk/co/immediate/mobile/visordown/Advert;->selectedCreative:Luk/co/immediate/mobile/visordown/Creative;
    invoke-static {v1}, Luk/co/immediate/mobile/visordown/Advert;->access$3(Luk/co/immediate/mobile/visordown/Advert;)Luk/co/immediate/mobile/visordown/Creative;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Luk/co/immediate/mobile/visordown/Advert$2;->this$0:Luk/co/immediate/mobile/visordown/Advert;

    # getter for: Luk/co/immediate/mobile/visordown/Advert;->selectedCreative:Luk/co/immediate/mobile/visordown/Creative;
    invoke-static {v2}, Luk/co/immediate/mobile/visordown/Advert;->access$3(Luk/co/immediate/mobile/visordown/Advert;)Luk/co/immediate/mobile/visordown/Creative;

    move-result-object v2

    iget-object v2, v2, Luk/co/immediate/mobile/visordown/Creative;->landingPage:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 86
    .local v0, "browserIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
