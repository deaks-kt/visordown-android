.class public Luk/co/immediate/mobile/visordown/VerticalScrollView;
.super Landroid/widget/ScrollView;
.source "VerticalScrollView.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private xDistance:F

.field private yDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Luk/co/immediate/mobile/visordown/VerticalScrollView;->setFadingEdgeLength(I)V

    .line 14
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 35
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    .line 20
    :pswitch_1
    const/4 v2, 0x0

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->yDistance:F

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->xDistance:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastX:F

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastY:F

    goto :goto_0

    .line 25
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 26
    .local v0, "curX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 27
    .local v1, "curY":F
    iget v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->xDistance:F

    iget v3, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->xDistance:F

    .line 28
    iget v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->yDistance:F

    iget v3, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastY:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->yDistance:F

    .line 29
    iput v0, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastX:F

    .line 30
    iput v1, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->lastY:F

    .line 31
    iget v2, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->xDistance:F

    iget v3, p0, Luk/co/immediate/mobile/visordown/VerticalScrollView;->yDistance:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 32
    const/4 v2, 0x0

    goto :goto_1

    .line 18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
