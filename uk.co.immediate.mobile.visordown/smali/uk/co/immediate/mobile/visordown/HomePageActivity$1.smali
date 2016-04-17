.class Luk/co/immediate/mobile/visordown/HomePageActivity$1;
.super Ljava/lang/Object;
.source "HomePageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/HomePageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/HomePageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$1;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "childView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/FeedItem;

    .line 60
    .local v0, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$1;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v2}, Luk/co/immediate/mobile/visordown/HomePageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    const-class v3, Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    .line 60
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "url"

    iget-object v3, v0, Luk/co/immediate/mobile/visordown/FeedItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/HomePageActivity$1;->this$0:Luk/co/immediate/mobile/visordown/HomePageActivity;

    invoke-virtual {v2, v1}, Luk/co/immediate/mobile/visordown/HomePageActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
