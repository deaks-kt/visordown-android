.class public Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FeedItemArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Luk/co/immediate/mobile/visordown/FeedItem;",
        ">;"
    }
.end annotation


# instance fields
.field private feedItemDescription:Landroid/widget/TextView;

.field private feedItemIcon:Landroid/widget/ImageView;

.field private feedItemName:Landroid/widget/TextView;

.field private feedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Luk/co/immediate/mobile/visordown/FeedItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItems:Ljava/util/List;

    .line 22
    iput-object p3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItems:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->getItem(I)Luk/co/immediate/mobile/visordown/FeedItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Luk/co/immediate/mobile/visordown/FeedItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 30
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/FeedItem;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    move-object v2, p2

    .line 36
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_0

    .line 37
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 38
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030015

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 42
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->getItem(I)Luk/co/immediate/mobile/visordown/FeedItem;

    move-result-object v0

    .line 43
    .local v0, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 45
    const v3, 0x7f05002f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemIcon:Landroid/widget/ImageView;

    .line 46
    iget-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemIcon:Landroid/widget/ImageView;

    iget-object v4, v0, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 49
    const v3, 0x7f050030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemName:Landroid/widget/TextView;

    .line 50
    iget-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemName:Landroid/widget/TextView;

    iget-object v4, v0, Luk/co/immediate/mobile/visordown/FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v3, 0x7f050031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemDescription:Landroid/widget/TextView;

    .line 54
    iget-object v3, p0, Luk/co/immediate/mobile/visordown/FeedItemArrayAdapter;->feedItemDescription:Landroid/widget/TextView;

    iget-object v4, v0, Luk/co/immediate/mobile/visordown/FeedItem;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object v2
.end method
