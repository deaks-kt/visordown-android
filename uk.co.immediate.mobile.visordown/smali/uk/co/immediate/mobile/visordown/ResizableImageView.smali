.class public Luk/co/immediate/mobile/visordown/ResizableImageView;
.super Landroid/widget/ImageView;
.source "ResizableImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 26
    iget-object v2, p0, Luk/co/immediate/mobile/visordown/ResizableImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 31
    .local v1, "width":I
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ResizableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/ResizableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 33
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Luk/co/immediate/mobile/visordown/ResizableImageView;->setMeasuredDimension(II)V

    .line 41
    .end local v0    # "height":I
    .end local v1    # "width":I
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/ResizableImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method
