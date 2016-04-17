.class public Luk/co/immediate/mobile/visordown/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private objects:Ljava/util/List;
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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Luk/co/immediate/mobile/visordown/FeedItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->objects:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 38
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    instance-of v9, p2, Landroid/widget/FrameLayout;

    if-nez v9, :cond_0

    .line 45
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->objects:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/immediate/mobile/visordown/FeedItem;

    .line 47
    .local v1, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Luk/co/immediate/mobile/visordown/ResizableImageView;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "imageView":Luk/co/immediate/mobile/visordown/ResizableImageView;
    new-instance v9, Landroid/widget/Gallery$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setAdjustViewBounds(Z)V

    .line 53
    iget-object v9, v1, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "borderImg":Landroid/widget/RelativeLayout;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 57
    const/high16 v9, -0x1000000

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 60
    const/16 v4, 0x96

    .line 61
    .local v4, "opacity":I
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v8, "textView":Landroid/widget/TextView;
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 64
    .local v7, "r":Landroid/content/res/Resources;
    const/4 v9, 0x1

    const/high16 v10, 0x42820000

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 66
    .local v6, "pxFrameHeight":I
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v5, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x50

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 69
    const/high16 v9, -0x6a000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 70
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {v8}, Landroid/widget/TextView;->invalidate()V

    .line 72
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->objects:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/co/immediate/mobile/visordown/FeedItem;

    iget-object v9, v9, Luk/co/immediate/mobile/visordown/FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    const/4 v9, 0x1

    const/high16 v10, 0x41980000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    const/16 v9, 0x14

    const/16 v10, 0xf

    const/16 v11, 0xa

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 76
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ImageAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0b005e

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 79
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 83
    move-object p2, v2

    .line 86
    .end local v0    # "borderImg":Landroid/widget/RelativeLayout;
    .end local v1    # "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "imageView":Luk/co/immediate/mobile/visordown/ResizableImageView;
    .end local v4    # "opacity":I
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "pxFrameHeight":I
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_0
    return-object p2
.end method
