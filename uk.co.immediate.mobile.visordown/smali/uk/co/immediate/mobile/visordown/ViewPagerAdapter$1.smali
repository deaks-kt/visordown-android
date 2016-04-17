.class Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/immediate/mobile/visordown/ViewPagerAdapter;


# direct methods
.method constructor <init>(Luk/co/immediate/mobile/visordown/ViewPagerAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;->this$0:Luk/co/immediate/mobile/visordown/ViewPagerAdapter;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/FeedItem;

    .line 91
    .local v0, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;->this$0:Luk/co/immediate/mobile/visordown/ViewPagerAdapter;

    # getter for: Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v2}, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->access$0(Luk/co/immediate/mobile/visordown/ViewPagerAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Luk/co/immediate/mobile/visordown/ArticleViewActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "url"

    iget-object v3, v0, Luk/co/immediate/mobile/visordown/FeedItem;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;->this$0:Luk/co/immediate/mobile/visordown/ViewPagerAdapter;

    # getter for: Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->activity:Landroid/app/Activity;
    invoke-static {v2}, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->access$0(Luk/co/immediate/mobile/visordown/ViewPagerAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
