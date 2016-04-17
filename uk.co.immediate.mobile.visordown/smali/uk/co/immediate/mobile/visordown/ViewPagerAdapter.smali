.class public Luk/co/immediate/mobile/visordown/ViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

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
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Luk/co/immediate/mobile/visordown/FeedItem;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->activity:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->objects:Ljava/util/List;

    .line 33
    iput-object p2, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method static synthetic access$0(Luk/co/immediate/mobile/visordown/ViewPagerAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/widget/FrameLayout;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 13
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 45
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->objects:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luk/co/immediate/mobile/visordown/FeedItem;

    .line 47
    .local v1, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Luk/co/immediate/mobile/visordown/ResizableImageView;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

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

    .line 54
    iget-object v9, v1, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 55
    iget-object v9, v1, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v9}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v9}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "borderImg":Landroid/widget/RelativeLayout;
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 59
    const/high16 v9, -0x1000000

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 62
    const/16 v4, 0x96

    .line 63
    .local v4, "opacity":I
    new-instance v8, Landroid/widget/TextView;

    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v8, "textView":Landroid/widget/TextView;
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 66
    .local v7, "r":Landroid/content/res/Resources;
    const/4 v9, 0x1

    const/high16 v10, 0x42820000

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 68
    .local v6, "pxFrameHeight":I
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v5, v9, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 69
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x50

    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 71
    const/high16 v9, -0x6a000000

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 72
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v8}, Landroid/widget/TextView;->invalidate()V

    .line 74
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->objects:Ljava/util/List;

    invoke-interface {v9, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Luk/co/immediate/mobile/visordown/FeedItem;

    iget-object v9, v9, Luk/co/immediate/mobile/visordown/FeedItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/4 v9, 0x1

    const/high16 v10, 0x41980000

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    const/16 v9, 0x14

    const/16 v10, 0xf

    const/16 v11, 0xa

    const/16 v12, 0xa

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/ViewPagerAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0b005e

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 80
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 84
    new-instance v9, Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;

    invoke-direct {v9, p0}, Luk/co/immediate/mobile/visordown/ViewPagerAdapter$1;-><init>(Luk/co/immediate/mobile/visordown/ViewPagerAdapter;)V

    invoke-virtual {v2, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {p1, v2, v9}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    .line 100
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcelable;
    .param p2, "c"    # Ljava/lang/ClassLoader;

    .prologue
    .line 119
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    return-void
.end method
