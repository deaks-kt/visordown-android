.class public Luk/co/immediate/mobile/visordown/Advert;
.super Landroid/widget/ImageButton;
.source "Advert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;
    }
.end annotation


# instance fields
.field private advertDrawn:Z

.field private context:Landroid/content/Context;

.field private creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/Creative;",
            ">;"
        }
    .end annotation
.end field

.field public currentDensity:I

.field public currentWidth:I

.field private selectedCreative:Luk/co/immediate/mobile/visordown/Creative;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v2, p0, Luk/co/immediate/mobile/visordown/Advert;->advertDrawn:Z

    .line 30
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Luk/co/immediate/mobile/visordown/Advert;->setBackgroundColor(I)V

    .line 31
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/Advert;->context:Landroid/content/Context;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Luk/co/immediate/mobile/visordown/Advert;->currentDensity:I

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Luk/co/immediate/mobile/visordown/Advert;->currentWidth:I

    .line 35
    new-instance v0, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;

    invoke-direct {v0, p0, p0}, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;-><init>(Luk/co/immediate/mobile/visordown/Advert;Luk/co/immediate/mobile/visordown/Advert;)V

    .line 36
    .local v0, "task":Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Luk/co/immediate/mobile/visordown/Advert$DownloadCreativesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    return-void
.end method

.method static synthetic access$0(Luk/co/immediate/mobile/visordown/Advert;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/Advert;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Luk/co/immediate/mobile/visordown/Advert;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/Advert;->creatives:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Luk/co/immediate/mobile/visordown/Advert;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/Advert;->renderAdvert()V

    return-void
.end method

.method static synthetic access$3(Luk/co/immediate/mobile/visordown/Advert;)Luk/co/immediate/mobile/visordown/Creative;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Luk/co/immediate/mobile/visordown/Advert;->selectedCreative:Luk/co/immediate/mobile/visordown/Creative;

    return-object v0
.end method

.method private getBitmapScalingFactor(Landroid/graphics/Bitmap;)F
    .locals 5
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 102
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/Advert;->getWidth()I

    move-result v1

    .line 103
    .local v1, "imageViewWidth":I
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/Advert;->getHeight()I

    move-result v0

    .line 106
    .local v0, "imageViewHeight":I
    int-to-float v3, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 109
    .local v2, "scalingFactor":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 111
    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 114
    :cond_0
    return v2
.end method

.method private renderAdvert()V
    .locals 8

    .prologue
    .line 49
    iget-object v5, p0, Luk/co/immediate/mobile/visordown/Advert;->creatives:Ljava/util/List;

    if-nez v5, :cond_1

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 52
    .local v1, "handler":Landroid/os/Handler;
    new-instance v5, Luk/co/immediate/mobile/visordown/Advert$1;

    invoke-direct {v5, p0}, Luk/co/immediate/mobile/visordown/Advert$1;-><init>(Luk/co/immediate/mobile/visordown/Advert;)V

    .line 56
    const-wide/16 v6, 0x64

    .line 52
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    iget-boolean v5, p0, Luk/co/immediate/mobile/visordown/Advert;->advertDrawn:Z

    if-nez v5, :cond_0

    .line 62
    iget-object v5, p0, Luk/co/immediate/mobile/visordown/Advert;->creatives:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Luk/co/immediate/mobile/visordown/Creative;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 94
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Luk/co/immediate/mobile/visordown/Advert;->advertDrawn:Z

    goto :goto_0

    .line 63
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/Creative;

    .line 67
    .local v0, "creative":Luk/co/immediate/mobile/visordown/Creative;
    iget v5, p0, Luk/co/immediate/mobile/visordown/Advert;->currentWidth:I

    iget-object v6, v0, Luk/co/immediate/mobile/visordown/Creative;->width:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 69
    iput-object v0, p0, Luk/co/immediate/mobile/visordown/Advert;->selectedCreative:Luk/co/immediate/mobile/visordown/Creative;

    .line 72
    iget-object v5, v0, Luk/co/immediate/mobile/visordown/Creative;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v5}, Luk/co/immediate/mobile/visordown/Advert;->getBitmapScalingFactor(Landroid/graphics/Bitmap;)F

    move-result v4

    .line 75
    .local v4, "scalingFactor":F
    iget-object v5, v0, Luk/co/immediate/mobile/visordown/Creative;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v5, v4}, Luk/co/immediate/mobile/visordown/Advert;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 78
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v3}, Luk/co/immediate/mobile/visordown/Advert;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    new-instance v5, Luk/co/immediate/mobile/visordown/Advert$2;

    invoke-direct {v5, p0}, Luk/co/immediate/mobile/visordown/Advert$2;-><init>(Luk/co/immediate/mobile/visordown/Advert;)V

    invoke-virtual {p0, v5}, Luk/co/immediate/mobile/visordown/Advert;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onWindowFocusChanged(Z)V

    .line 44
    invoke-direct {p0}, Luk/co/immediate/mobile/visordown/Advert;->renderAdvert()V

    .line 45
    return-void
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "scalingFactor"    # F

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    .line 120
    .local v0, "scaleHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .line 122
    .local v1, "scaleWidth":I
    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method
